#!/usr/bin/bash

for number in {19..20}
do
	varname=c${number}
	smiles=""
	for (( i=0; i<$number; i++)); do
		smiles+="C"
	done
	echo $varname
	echo $smiles
	mkdir $varname
	echo "Made directory"
	cd ./$varname
	echo "went to directory"
	source $HOME/bin/mo-de/bin/activate
	echo "activated python"
	python $HOME/bin/generate_xyz/generate_xyz.py "$smiles" --name $varname
	echo "generated smiles"
	deactivate
	echo "deactivated python"
	crest ./${varname}.xyz -gfnff -mquick -T 4 | tee -a crest.out
	echo "did crest"
	cd ..
done

