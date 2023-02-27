
import os
import sys
import glob
text = {}
path = ""
files = glob.glob('**/*.txt', recursive=True)
for fn in files:
	fff = None
	with open(fn,"rb") as f:
		ff = f.read()
		fff = ff.decode("iso-8859-1")

	#write output file
	with open(fn, 'w', encoding = 'iso-8859-1', newline='') as f:
		if fff != None:
			f.write(fff)