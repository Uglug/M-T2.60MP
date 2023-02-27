from PIL import Image
import sys
import winsound

provcolor = {}

with open("map\definition.csv", 'rb') as f:
		lines = f.readlines()
		for line in lines[1:]:
			l = line.decode("latin-1").split(";")
			provcolor[int(l[0])] = (int(l[1]), int(l[2]), int(l[3]))

colorprov = {rgb: prov for prov, rgb in provcolor.items()}

mapimage = Image.open("map\provinces.bmp")

pix_x = 0
pix_y = 0

num_stray_pixel = 0

for rgb in mapimage.getdata():
    if not(rgb in colorprov):
        num_stray_pixel += 1

        sys.stdout.write(str(pix_x) + ', ' + str(pix_y) + '\n')        
    pix_x += 1

    if (pix_x == mapimage.width):
        pix_x = 0
        pix_y += 1

sys.stdout.write(str(num_stray_pixel) + '\n')

winsound.Beep(440, 500)
winsound.Beep(440, 500)

sys.stdout.write("Finished")

input()
