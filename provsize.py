#!/usr/bin/env python -i

# Paradox file parsers and utilities for loading EU4 province sizes and positions
# by seboden 2017

event_structure = """
country_event = {
	id = distance_calc.%d
	title = "EVT_AI"
	desc = "EVT_AI"
	picture = MEIOU_AND_TAXES_eventPicture

	is_triggered_only = yes
	hidden = yes

	trigger = {
		always = yes
	}

	immediate = {%s
	}

	option = {
		name = "EVT_AI"
		ai_chance = { factor = 100 }
	}
}
"""

import os
import winsound
import sys

def parse_line(line):
	s = line.strip()
	ss = s.split('"')
	tokens = []
	for i,sss in enumerate(ss):
		if i%2==0:
			sss = sss.replace("="," = ").replace("{"," { ").replace("}"," } ")
			if "#" in sss:
				sss = sss.split("#")[0]
				tokens.extend(sss.split())
				return tokens
			tokens.extend(sss.split())
		else:
			tokens.append('"%s"' % sss)
	return tokens

def parse_file(fn):
	def update(dic, new):
		if isinstance(new, dict):
			new = new.items()
		for key, val in new:
			if key not in dic:
				dic[key] = val
			elif isinstance(dic[key], list):
				dic[key].append(val)
			else:
				dic[key] = [dic[key], val]
	d = {}
	names = []
	stack = [(d,"")]
	tokens = []
	key = ""
	with open(fn,"rb") as f:
		ff = f.read()
		fff = ff.decode("iso-8859-1")
		for line in fff.splitlines():
			tokens += parse_line(line)
		for token in tokens:
			if token == "=":
				key = names.pop()
			elif token == "{":
				dd = {}
				update(stack[-1][0], {key: dd})
				stack.append((dd,key))
				key = ""
			elif token == "}":
				if len(stack[-1][0]):
					update(stack.pop()[0], [(n,n) for n in names])
				else:
					k = stack.pop()[1]
					stack[-1][0][k] = []
					update(stack[-1][0], [(k,n) for n in names])
				names = []
			else:
				names.append(token)
				if key:
					update(stack[-1][0], {key: names.pop()})
					key = ""
	return d

def calc_sea_neighbors(sea_prov, image, width, height, colorprov):
	sea_neighbors = {prov:[] for prov in sea_prov}

	pix_x = 0
	pix_y = 0

	for ind in range(len(image)):
		prov = colorprov[image[ind]]

		if 0 < pix_x < width and 0 < pix_y < height:
			if prov in sea_prov:
				clover = [image[ind + 1], image[ind + width + 1], image[ind - 1], image[ind - width - 1]]

				prov_group = [prov]

				for rgb in clover:
					temp = colorprov[rgb]

					if temp in sea_prov and not temp in prov_group:
						prov_group.append(temp)

						if not temp in sea_neighbors[prov_group[0]]:
							sea_neighbors[prov_group[0]].append(temp)
                                			
		pix_x += 1

		if (pix_x > width):
			pix_x = 0
			pix_y += 1

	return sea_neighbors

def get_provgroup(f, op):
	for group in f:
		if len(f[group]) > 0:
			op[f[group][0]] = f[group][1:]

def calc_provgroup(f, n):
	ind = 0

	output1 = '%sgroup = {\n\t' % n
	output2 = ''
        
	for item in f:
		ind += 1

		output1 += '%s ' % item
		output2 += '%s_%d = {\n\t' % (n, ind)

		for prov in f[item]:
			output2 += '%s ' % prov

		output2 += '\n}\n'

	output1 += '\n}\n\n'

	return output1, output2

def calc_partgroup(f, ff, n, nn):
	ind = 0

	output = ''
        
	for item in f:
		ind += 1
                
		output += '%s_%d_%s = {\n\t' % (n, ind, nn)
       
		for prov in f[item]:
			for center in ff:
				if prov == center:
					output += '%s ' % prov

					break

		output += '\n}\n'

	return output

def add_provgroup(path, sea_prov):
	r = parse_file(os.path.join(path, 'region.txt'))
	a = parse_file(os.path.join(path, 'area.txt'))
	s = parse_file(os.path.join(path, 'superregion.txt'))
	c = parse_file(os.path.join(path, 'continent.txt'))

	for region in r:
		if 'areas' in r[region] and not 'eitc_region' in region:
			tl = []
                        
			for area in r[region]['areas']:
				if int(a[area][0]) in sea_prov:
					tl = []
                                        
					break
				tl.extend(a[area])
                                
			r[region] = list(tl)
		else:
			r[region] = []

	for sr in s:
		if len(s[sr]) > 0:
			tl = []

			for region in s[sr]:
				tl.extend(r[region])

			s[sr] = list(tl)

	for cont in c:
		if cont == 'eitc_continent' or cont == 'scc_continent' or cont == 'antarctica':
			c[cont] = []

	for region in r:
		if 'scc_' in region:
			r[region] = []

	region = {}
	superregion = {}
	cont = {}

	get_provgroup(r, region)
	get_provgroup(s, superregion)
	get_provgroup(c, cont)
        
	with open(os.path.join(path, "provincegroup.txt"), encoding='ISO-8859-1') as ff:
		t = ff.read()
		t = t[:t.find('portgroup')].rstrip('\n\t ') + '\n\n'
		portgroup = 'portgroup = {\n'
		
		i = 0

		for port in sea_prov:
			if i == 0:
				portgroup += '\t'
									
			portgroup += '%d ' % port

			i += 1

			if i == 20:
				i = 0

				portgroup += '\n'

		portgroup += '\n}\n\n'

		regiongroup, regionpart = calc_provgroup(region, 'region')
		srgroup, srpart = calc_provgroup(superregion, 'sr')
		contgroup, contpart = calc_provgroup(cont, 'cont')

		contregion = calc_partgroup(cont, region, 'cont', 'region')
		
		with open(os.path.join(path, "provincegroup.txt"), 'w', encoding='ISO-8859-1') as fff:
			fff.write('%s%s%s%s%s%s%s%s' % (t, portgroup, regiongroup, srgroup, contgroup, srpart, contpart, contregion))

def province_stats(path="", compute_from_map=True, prov_per_event=500):
	"""The compute_from_map option is computationally intensive, but corrects the distortion of province sizes by the map projection;
	 it also computes all river connections between provinces 
	 prov_per_event specifies how many provinces are set per setup event"""
	
	comment = """namespace = distance_calc
# Event to set the size (in pixels)  and coordinates of all provinces as variables;
# also save the square root of the size as an approximation of distance and travel times;
# also save all river_connections as province_flags ("river_province" and "river_to_####")"""
	
	default_map = parse_file(os.path.join(path, "default.map"))
	positions = parse_file(os.path.join(path, "positions.txt"))
	climate = parse_file(os.path.join(path, "climate.txt"))
	
	provnumber = int(default_map["max_provinces"])
	provcolor = {}
	with open(os.path.join(path, "definition.csv"), 'rb') as f:
		lines = f.readlines()
		for line in lines[1:]:
			l = line.decode("latin-1").split(";")
			provcolor[int(l[0])] = (int(l[1]), int(l[2]), int(l[3]))
	
	from PIL import Image
	
	mapimage = Image.open(os.path.join(path, "provinces.bmp"))
	colorsize = {rgb: count for count, rgb in mapimage.getcolors(256**3)}
	
	riverconnections = {}
	
	if compute_from_map:
		import numpy as np
		colorprov = {rgb: prov for prov, rgb in provcolor.items()}
		provmap = np.array([colorprov[rgb] for rgb in mapimage.getdata()]).reshape((mapimage.height, mapimage.width))
		distortionmap = map_distortion(mapimage.height, mapimage.width)
	
		riverimage = Image.open(os.path.join(path, "rivers.bmp"))
		rivercolors = [color for count, color in sorted(riverimage.getcolors())[:-2]]
		i = 0
		w, h = mapimage.width, mapimage.height
		for color in riverimage.getdata():
			if (color in rivercolors):
				x = i % w
				y = int(i / w)
				# use the river pixel to connect all (even diagonally) adjacent provinces
				riverprovs = set(provmap[max(0,y-1):min(y+1,h), max(0,x-1):min(x+1,w)].ravel())
				# connect only provinces which the river actually flows through
				#neighbors = [(x,y),(x,max(0,y-1)),(x,min(y+1,h)),(max(0,x-1),y),(min(x+1,w),y)]
				#riverprovs = set([provmap[y,x] for x,y in neighbors if riverimage.getpixel((x,y)) in rivercolors])
				for p in riverprovs:
					otherprovs = riverprovs.difference({p})
					riverconnections[p] = riverconnections.get(p, set()).union(otherprovs)
			i += 1

			
	provinces = [p for p in range(1,provnumber) if (str(p) not in default_map["only_used_for_random"])]
	land_provinces = [p for p in provinces if (str(p) not in default_map["sea_starts"]) and
						(str(p) not in default_map["lakes"])]
	positions_t = [(int(positions[prov]['position'][6].rstrip('1234567890').rstrip('.')), int(mapimage.height - float(positions[prov]['position'][7])), int(prov)) for prov in positions]
	wasteland = [int(prov) for prov in climate['impassable']]
	sea_provinces = [p for p in provinces if (str(p) in default_map["sea_starts"]) and not str(p) in wasteland]
	sea_neighbors = calc_sea_neighbors(sea_provinces, mapimage.getdata(), mapimage.width - 1, mapimage.height - 1, colorprov)
	
	s = ""
	text = comment
	latitude = longitude = 0
	stats=[]
	for i,prov in enumerate(provinces):	#or just land_provinces?
		if compute_from_map:
			provmask = provmap==prov
			size = distortionmap[provmask].sum()
			try:
				latitudes = provmask.sum(axis=1)
				latitude = int(np.average(np.arange(len(latitudes)), weights=latitudes))
				longitudes = provmask.sum(axis=0)
				longitude = int(np.average(np.arange(len(longitudes)), weights=longitudes))
			except ZeroDivisionError:
				latitude = longitude = 0
		else:
			try:
				color = provcolor[prov]
				size = colorsize[color]
				pos = positions[str(prov)]["position"]
				longitude = int(float(pos[0]))
				latitude  = int(float(pos[1]))
			except KeyError:
				size = 0
				latitude = longitude = 0
		
		# correct for shift in map projection between eastern and western hemisphere
		if (latitude or longitude) and longitude < limit_west:
			latitude += equator_east - equator_west
		stats.append([prov, size, latitude, longitude])
		
		sizes  = " set_variable = { which = prov_size value = %6d } set_variable = { which = prov_radius value = %.3f }" % (max(1, size), max(0.001, (size/3.1415)**0.5))
		coords = " set_variable = { which = x_coord value = %4d } set_variable = { which = y_coord value = %4d }" % (longitude, latitude)
		if False and prov in riverconnections:
			rivers = " set_province_flag = river_province"
			rivers += "".join([" set_province_flag = river_to_%d" % other for other in riverconnections[prov]])
		else:
			rivers = ""
		prov_id = " set_variable = { which = prov_id value =%4d }" % (prov)
		neighbors = ""
		neighbors_num = 0

		if prov in sea_provinces:
			for neighbor in sea_neighbors[prov]:
				neighbors += ' set_province_flag = sea_neighbor_of_%d' % neighbor
				neighbors_num += 1

		if neighbors_num:
			neighbors_num = ' set_variable = { which = neighbors_num value = %d }' % neighbors_num
		else:
			neighbors_num = ''
                                
		s += "\n\t\t%4d = {%s%s%s%s%s%s  }" % (prov, prov_id, coords, sizes, rivers, neighbors, neighbors_num)

		if (i % prov_per_event == prov_per_event - 1) or i == len(provinces)-1:
			eventid = int(i/prov_per_event) + 1
			if i<len(provinces)-1:
				s += "\n\t\tcountry_event = { id = distance_calc.%d }" % ( eventid + 1 )
			else:
				s += "\n\n\t\tif = {\n\t\t\tlimit = {\n\t\t\t\tNOT = { has_global_flag = POP_initialised }\n\t\t\t\tNOT = { has_global_flag = first_estate_fired }\n\t\t\t}\n\t\t\tset_global_flag = POP_initialised\n\t\t\tcountry_event = { id = POP_startup_events.000 }\n\t\t}"
			text += event_structure % (eventid, s)
			s = ""

	add_provgroup(path, sea_provinces)

	
			
	return text, stats, riverconnections


north = 71.2		# northernmost latitude of the map (in eastern hemisphere)
south = -46.2		# southernmost latitude of the map (in eastern hemisphere)
equator_east = 1323	# pixelvalue of equator in eastern hemisphere
equator_west = 1132	# pixelvalue of equator in western hemisphere
limit_west = 2340	# pixelvalue of border between western and eastern hemisphere

def map_distortion(height, width):
	"trying to reconstruct Paradox's weird modified Miller projection"
	from numpy import arange, repeat, append, cos, tan, arctan, exp, log, pi
	def miller(phi):
		return 5/4. * log(tan(pi/4. + 2/5. * phi))
	def reverse_miller(y):
		return 5/2. * arctan(exp(4/5. * y)) - 5/8. * pi
	
	scale = (miller(north / 180.*pi) - miller(south / 180.*pi)) / height
	y_east = (equator_east - arange(height)) * scale
	y_west = (equator_west - arange(height)) * scale
	phi_east = reverse_miller(y_east)
	phi_west = reverse_miller(y_west)
	distortion_east = cos(phi_east) * cos(4/5. * phi_east)
	distortion_west = cos(phi_west) * cos(4/5. * phi_west)
	map_east = repeat(distortion_east.reshape((1,-1)), width - limit_west, axis=0)
	map_west = repeat(distortion_west.reshape((1,-1)), limit_west, axis=0)
	return append(map_west, map_east, axis=0).T

"""
def build_tree(path="", text={}):
	superregion = parse_file(os.path.join(path, "map", "superregion.txt"))
	region = parse_file(os.path.join(path, "map", "region.txt"))
	area = parse_file(os.path.join(path, "map", "area.txt"))
	tree = {}
	for sr in superregion.keys():
		s = []
		for re in superregion[sr]:
			for ar in region[re]["areas"]:
				s.append( (len(area[ar]), ar, re, ", ".join([repr(f) for f in text if ar in text[f]])) )
		tree[sr] = sorted(s,key=lambda i:i[0],reverse=True)
	return tree
	
def load_text(path=""):
	import glob
	text = {}
	files = glob.glob(os.path.join(path, "events", "*")) + glob.glob(os.path.join(path, "decisions", "*")) + glob.glob(os.path.join(path, "missions", "*"))
	for fn in files:
		with open(fn,"rb") as f:
			ff = f.read()
			text[fn] = ff.decode("iso-8859-1")
	return text
	
def show(tree):
	s = []
	for sr in tree:
		stat = [0.]*20
		ss = ""
		for ar in tree[sr]:
			stat[int(ar[0])]+=1
			ss += "\tProvs = %2d  %-20s %-20s Refs: %s\n" % ar
		mean = sum([stat[i]*i for i in range(20)])/sum(stat)
		s.append((mean,"Subcontinent = %s\tAvg. Prov/Area = %g\n" % (sr, mean) + ss))
	return "".join([ss[1]for ss in sorted(s,key=lambda i:i[0],reverse=True)])
"""

if __name__ == "__main__":
	path = ""
	with open(os.path.join(path,"events","Province_Setup.txt"),"w") as f:
		text, stats, rivers = province_stats(os.path.join(path, "map"), compute_from_map=True, prov_per_event=500)
		f.write(text)

	winsound.Beep(440, 500)
	winsound.Beep(440, 500)

	sys.stdout.write("Finished")
