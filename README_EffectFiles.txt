############################
# M&T Utility Effect Files #
############################

### What is an effect file?

	An effect file is quite simply a file that contains a code effect for eu4.
	It can be run using a console command. 
	The effect will be executed immediately, under the root scope of the country doing the command.

### How to use effect files?

	In the game, do "run [effectfilename]" in the console.
	For example, to run "mt_count_provinces", do "run mt_count_provinces.txt".

	Some effect files will alter the game in progress, others will output data.

	This data can be found in Documents/Paradox Interactive/Europa Universalis IV/logs/game.log
	As that file keeps track of many things happening in the game, it's best to pause the game to run 
	effect files and check their results. Otherwise, the result may get buried under other game events.

	If the console says "Executed [effectfilename].txt", the file has been run successfully.

	If the console says "Cannot find file [effectfilename].txt or does not say anything,
	check that you have written the effect file name correctly.

	Some effect files require the selection of one or several provinces. In this case, pause the game 
	and start the construction of "Select Province" buildings in those provinces.
	Advance the game by one single day before running the file.
	If the file requires just one province but you build "Select Province" in several, one of these
	provinces will be chosen at random.

### Effect files list

# Primarily for gameplay data

	mt_find_patriarchs.txt

Finds where patriarchs reside
Results found in game.log

	mt_find_centers.txt

[Select one province]
Counts trade power, production power and art power in its superregion, and calculates how many centers
of which type the superregion has.
Results found in game.log

# Primarily for submodding

	mt_count_provinces.txt

Counts the amount of provinces in each continent and the world, then compares the sum.
Results found in game.log