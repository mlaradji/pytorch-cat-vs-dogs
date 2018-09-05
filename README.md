## Objective

Creates an `entry.csv` that can be submitted to [Dogs vs. Cats Redux: Kernels Edition](https://www.kaggle.com/c/dogs-vs-cats-redux-kernels-edition/).

## Differences from parent repository

This fork contains several differences from the parent repository. The main ones are:
- Some deprecated functionality was replaced with modern code in `main.py`. The overall output should still be the same.
- Added `copy.f`, which allows copying current data to a chosen folder in `trials/`.

## Quick-start

1. Download the data from [Dogs vs. Cats Redux: Kernels Edition](https://www.kaggle.com/c/dogs-vs-cats-redux-kernels-edition/) and save to the root folder.
2. Run `prepare_data.sh` to prepare the `data` folder.
2. Run `launch.sh` after changing passed arguments to the desired values. Be sure to also look at the passed arguments in `resume.sh`.
3. It will run in the background, and will stop after an error or after the number of epochs has been reached.
4. To test the generated model, run `test.sh`. This will create `entry.csv` in `data/`.
5. To resume the program after it was stopped, run `resume.sh`.

## copy.f

The file `copy.f` is a list of functions that can be sourced in bash. 

### To copy root data to a folder in trials
If the desired trial name is `trial1`, use (in the root folder) `. copy.f; to trial1` to copy the data from `.` to `trials/trial1`.

### To copy data from a folder in trials to root
If the desired trial name is `trial1`, use (in the root folder) `. copy.f; from trial1` to copy the data from `trials/trial1` to `.`. 
