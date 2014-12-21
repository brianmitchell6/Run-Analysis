Run-Analysis
============

Getting and Cleaning Data Course project on Coursera

The Run Analysis() function assumes the working directory contains the files "features.txt" and "activity_labels.txt".  In addition, the folders 'train' (containing "x_train.txt" and "y_train.txt") and 'test' (containing "x_test.txt" and "y_test.txt") should also be located in the working directory.
The function will output a tidy data file called "run_analysis.txt" to the working directory.

Basic operations of the function:
1. Read in all data files
2. Combine the training and testing files using rbind()
3. Add column names to the combined files and create one large data frame
4. Select the columns that contain mean and standard deviation
5. Substitute the activity names for the associated numbers
6. Derive the means of all columns grouped by subject number and activity
7. Write resulting data frame to file "run_anaylysis.txt" in the working directory

**Note**
The function will product numerous warning messages related to the aggregate.data.frame function.  These result from the functions attempt to determine the mean of the Activity column.  Since it is composed of characters, it results in a warning.
