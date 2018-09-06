#!/bin/bash

# Change the working directory to the folder containing `copy.f`.

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"


declare -a files=(main.py nohup.out checkpoint.pth.tar model_best.pth.tar)



function from
{
        for i in "${files[@]}"
                do
                cp trials/"$1"/"$i" .  
		                
        done
}

function to
{
	for i in "${files[@]}"
		do
		mkdir -p trials/"$1"
   		cp $i trials/"$1"/ 
  
	done
}
