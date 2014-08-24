---
title: "run_analysis.R"
author: "j2arms"
date: "Sunday, August 24, 2014"
output: html_document
---


##Summary

This repository contains 
  *the script, 
  *the Codebook
  *the ReadMe 
file to clean and prepare data coming from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones . The original data was gathered from accelerators from smartphones to track activities of some test persons. A more detailed description of the data con be found in the Code book.md. 

The final data is a summary displaying the mean per person (subject) and activity for the mean and the standard deviation of some relevant variables. 

###Prerequiste

It is assumed that the data is downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, unzipped and stored directly in the working directory with the subfolders "training" and "test".

run_analysis.R is in the same working directory

The package "plyr" is installed.

###Execute
source("./run_analysis")
run_analysis()

### Original data
 *xTrain:  main training data
 *yTrain: Activities for which xTrain was measured
 *subjectTrain: Subjects which executed the activities measured by xTrain 
 *xTest:  main test data
 *yTest: Activities for which xTest was measured
 *subjectTest: Subjects which executed the activities measured by xTest
 *features : list of the activities with names of the activities. 
Subjects are only represented by numbers. 

###Processing steps

#### Preparation
The first steps include loading necessary libraries all necessary original data is loaded. The decimal is explicitly set so that the script also works on systems with a different setting. 

#### Add column headings
The original data set contains more than 500 columns without names. The column names are avaible in a different table called features. The column names are placed on top of the data.

#### Merging data 
First the three files for Train and the three files for activities are merged (using cbind to preserve order).
The the two resulting files (mtrain and mtest) are merged (using rbind)

#### Tidying data
After this step the number values representing activities are replaced by labels
Only columns subject_id, activity_id and all variables containing "mean" or "std" are kept.
Finally the column names are cleaned from special characters and converted to lowercase 

#### Summarizing
using the ddply (from plyr package) the data is summarized to diplay the mean for each subject and activity combination of all variables which has  mean or standard deviation  value. The final set has therfore only 180 rows. 

#### Storing data
The cleaned data is stored in the result file tidyData.txt as in a CSV format. 
