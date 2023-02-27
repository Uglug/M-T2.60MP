
import os
import sys
import glob
text = {}
path = ""
files = glob.glob('**/*.yml', recursive=True)
for fn in files:
	fff = None
	with open(fn,"rb") as f:
		ff = f.read()
		fff = ff.decode("utf-8-sig")

	#write output file
	with open(fn, 'w', encoding = 'utf-8-sig', newline='') as f:
		if fff != None:
			f.write(fff)