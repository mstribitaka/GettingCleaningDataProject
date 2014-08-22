##Getting and Cleaning Data Project
##==========================

###Smartphone Project

The Smartlab - Non Linear Complex Systems Laboratory at the Universit degli
Studi di Genova performed an experiment titled "Human Activity Recognition
Using Smartphone".  The experiment was performed on 30 subjects, over
6 activities (e.g., standing, walking, etc.) and a total of 561 variables
were obtained.

The script run_analysis.R merges test and training data and produces a tidy 
dataset that includes, for each combination of subject and activity, the 
average values of variables related to the mean or standard-deviation of 
a given measurement.

Before this script is run, data needs to be downloaded from the following
source:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The zip file includes the following files (see Codebook.md for more information
on contents of each file and description of variables therein):

1.  activity_labels.txt
2.  features_info.txt
3.  features.txt
4.  README.txt
5.  test (folder)
6.  train (folder)

Each of the test and train folders includes the following files:

1.  subject_test.txt 
2.  X_test.txt/X_train.txt
3.  y_test.txt/y_train.txt

When run_analysis.R is executed, it needs to be located in the top level 
directory (i.e. the same level where, say, activity_labels.txt is located).

To execute the script in R, type:

setwd('name_of_directory_where_script_is_located')

source('run_analysis.R')


In particular, run_analysis.R performs the following operations:

1.  Loads any libraries needed;
2.  Merges data from the test and train folders into one dataframe;
3.  Changes the activity labels from numbers to more descriptive terms.
    This step uses the file 'activity_labels.txt' to do the mapping.
4.  Renames the generic column names in the merged dataframe to more 
    descriptive variable names.  Here I chose *not* to change the 
    variable names as given in the original tables because, in my opinion, 
    they are descriptive enough.  It was more important to change column 
    names from, say, "V1" to "tBodyAcc-mean()-X".
5.  Removes columns that do *not* have the terms "mean", "Mean", "std", or
    "STD" in the column name.
6.  Reshapes resulting dataframe such that for each combination of 
    Subject + Activity there is an average value for each variable.  
7.  Final tidy-dataset is written to a file "TidyData2.txt".  