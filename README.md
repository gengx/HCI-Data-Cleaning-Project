# HCI-Data-Cleaning-Project
The course project for Getting and Cleaning Data Course

##Overview

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the raw data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The purpose of this project is to clean this data set and extract useful information out of it. 

The following files are included in this project:
* run_analysis.R : the R-code run on the data set
* mean_tidy.txt : the clean data extracted from the original data using run_analysis.R
* CodeBook.md : the CodeBook reference to the variables in mean_tidy.txt
* README.md : the analysis of the code in run_analysis.R

R script called run_analysis.R does the following: 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.



