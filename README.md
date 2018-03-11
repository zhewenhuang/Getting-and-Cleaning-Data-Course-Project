# Getting-and-Cleaning-Data-Course-Project
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

A code book called CodeBook.md describes the variables, the data, and transformations.

The run_analysis.R script does the following:
1.	Download the dataset if it does not already exist in the working directory
2.	Load the activity, subject, and features, of both the training and test datasets, then combine training and test sets, and then combine activity, subject, and feature sets
3.	Extract only those columns which reflect the mean or standard deviation
4.	Rename the data set with descriptive variable names
5.	Create a tidy dataset that consists of the average of each variable for each subject and each activity.

The tidy data set is saved to tidydata.txt.
