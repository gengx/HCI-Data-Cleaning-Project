CodeBook
---------------------------------------------------------------
This document describes the data and transofrmations used by *run_analysis.R* and the definition of variables in *mean_tidy.txt*.

##Dataset Used

This data is obtained from "Human Activity Recognition Using Smartphones Data Set". The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The data set used can be downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>. 

##Input Data Set

The input data containts the following data files:

- `X_train.txt` contains variable features that are intended for training.
- `y_train.txt` contains the activities corresponding to `X_train.txt`.
- `subject_train.txt` contains information on the subjects from whom data is collected.
- `X_test.txt` contains variable features that are intended for testing.
- `y_test.txt` contains the activities corresponding to `X_test.txt`.
- `subject_test.txt` contains information on the subjects from whom data is collected.
- `activity_labels.txt` contains metadata on the different types of activities.
- `features.txt` contains the name of the features in the data sets.

##Output Data Set

- `Activity` is used for the column name of the descriptive activity labels, and `Subject` is used for the column name of the subjects.
- Acronyms in variable names in features.txt, like 'Acc', 'Gyro', 'Mag', 't' and 'f' are replaced with descriptive labels such as 'Accelerometer', 'Gyroscpoe', 'Magnitude', 'Time' and 'Frequency'.
- The output data `mean_tidy.txt` is a a space-delimited value file. The header line contains the names of the variables. It contains the mean and standard deviation values of the data contained in the input files. The header is restructued in an understandable manner. 
