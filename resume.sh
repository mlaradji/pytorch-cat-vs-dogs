#!/bin/bash

mv nohup.out nohup.old
nohup python3 main.py data -b6 --resume checkpoint.pth.tar --epochs 120
tail -f nohup.out
#watch -n 10 nvidia-smi &
#watch -n 30 "tail nohup.out" &

#exit 0
