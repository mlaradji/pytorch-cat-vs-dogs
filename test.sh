#!/bin/bash

#nohup 
python3 main.py data --resume checkpoint.pth.tar --test
tail -f nohup.out
