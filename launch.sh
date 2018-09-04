#!/bin/bash

mv nohup.out nohup.old

# -b# means that the batch-size is #. Lower # means less GPU memory usage. If a CUDA out of memory occurs, you can stop other GPU programs to save memory, or lower the batch-size.
# For a GeForce GTX 960 GPU card with about 2000 MiB, the code can be run with `-b6`, and main.py will use about 1800 MiB of the memory.
nohup python3 main.py data -b6 --epochs 120

tail -f nohup.out
#watch -n 10 nvidia-smi &
#watch -n 30 "tail nohup.out" &

#exit 0
