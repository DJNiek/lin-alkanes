#!/usr/bin/bash

for number in {6..18}
do
	varname=c${number}
	echo $varname
	cd ${varname}
	echo "went in directory ${varname}"
	mkdir folded
	mkdir unfolded
	echo "made folders"
	mv ./folded.xyz ./folded
	mv ./unfolded.xyz ./unfolded
	echo "moved files"
	cd folded
	xtb folded.xyz --gfn 2 --ohess -P 4 | tee -a xtb.out
	cd ..
	echo "did folded calculation"
	cd unfolded
	xtb unfolded.xyz --gfn 2 --ohess -P 4 | tee -a xtb.out
	cd ..
	echo "did unfolded calculation"
	cd ..
done
