Instructions for the assignment
===
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
Review criteria
---
    The submitted data set is tidy.
    The Github repo contains the required scripts.
    GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
    The README that explains the analysis files is clear and understandable.
    The work submitted for this project is the work of the student who submitted it.

Getting and Cleaning Data Course Project
---
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!


My Script
---

My script was written in RStudio Version 0.99.903 – © 2009-2016 RStudio, Inc. Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) using AppleWebKit/601.7.7 (KHTML, like Gecko)

To run my script, have the run_analysis.R script must be in the same folder as the UCI HAR Dataset folder and both of these must be in the current working directory.

The script Reads data from the data sets, makes it tidy by adding Subject, Activity, and replacing activities with their names (instead of the code numbers they come with), combines both test and training data sets into one, uses regular expressions to remove all columns that aren't either a mean or a standard deviation, names each column based on the features.txt file included in the data set, creates another tidy data set with the average of each variable and writes into a file called output.csv.
