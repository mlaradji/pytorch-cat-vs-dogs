#!/bin/bash


function from
{
	declare -a files=(main.py nohup.out checkpoint.pth.tar model_best.pth.tar launch.sh)
        for i in "${files[@]}"
                do
                cp trials/"$1"/"$i" .  
		                
        done
}

function to
{
	declare -a files=(main.py nohup.out checkpoint.pth.tar model_best.pth.tar launch.sh)
	for i in "${files[@]}"
		do
		mkdir -p trials/"$1"
   		cp $i trials/"$1"/ 
  
	done
}
