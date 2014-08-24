---
title: CodeBook
author: j2arms
date: Sunday, August 24, 2014
output: html_document
---
### Description
This CodeBook data in the file tidyData.txt
This file is derived from original data which can be found at 
http://archive.ics.uci.edu/ml/datasets/Human+ Activity+Recognition+Using+Smartphones.
The file was cleaned, prepared and summarized using the function run_analysis.R

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Data elements
1. subjectid:  identifies a subject. Subjects are identified by numbers [1:30]
2. activityid: identifies an activities a activity can be one of 
  + WALKING
  + WALKING_UPSTAIRS
  + WALKING_DOWNSTAIRS
  + SITTING
  + STANDING
  + LAYING

3. All other variables are the mean value of the respective original variable describing certain attributes gathered. 
The value of each variable is double in the range [-1:1]
+ tbodyaccmeanx               
+ tbodyaccmeany
+ tbodyaccmeanz
+ tbodyaccstdx
+ tbodyaccstdy
+ tbodyaccstdz
+ tgravityaccmeanx            
+ tgravityaccmeany
+ tgravityaccmeanz
+ tgravityaccstdx             
+ tgravityaccstdy
+ tgravityaccstdz
+ tbodyaccjerkmeanx           
+ tbodyaccjerkmeany
+ tbodyaccjerkmeanz
+ tbodyaccjerkstdx
+ tbodyaccjerkstdy
+ tbodyaccjerkstdz
+ tbodygyromeanx
+ tbodygyromeany
+ tbodygyromeanz
+ tbodygyrostdx               
+ tbodygyrostdy
+ tbodygyrostdz
+ tbodygyrojerkmeanx          
+ tbodygyrojerkmeany
+ tbodygyrojerkmeanz
+ tbodygyrojerkstdx           
+ tbodygyrojerkstdy
+ tbodygyrojerkstdz
+ tbodyaccmagmean             
+ tbodyaccmagstd
+ tgravityaccmagmean
+ tgravityaccmagstd           
+ tbodyaccjerkmagmean
+ tbodyaccjerkmagstd
+ tbodygyromagmean            
+ tbodygyromagstd
+ tbodygyrojerkmagmean
+ tbodygyrojerkmagstd         
+ fbodyaccmeanx
+ fbodyaccmeany
+ fbodyaccmeanz               
+ fbodyaccstdx
+ fbodyaccstdy
+ fbodyaccstdz                
+ fbodyaccmeanfreqx
+ fbodyaccmeanfreqy
+ fbodyaccmeanfreqz           
+ fbodyaccjerkmeanx
+ fbodyaccjerkmeany
+ fbodyaccjerkmeanz           
+ fbodyaccjerkstdx
+ fbodyaccjerkstdy
+ fbodyaccjerkstdz            
+ fbodyaccjerkmeanfreqx
+ fbodyaccjerkmeanfreqy
+ fbodyaccjerkmeanfreqz       
+ fbodygyromeanx
+ fbodygyromeany
+ fbodygyromeanz              
+ fbodygyrostdx
+ fbodygyrostdy
+ fbodygyrostdz               
+ fbodygyromeanfreqx
+ fbodygyromeanfreqy
+ fbodygyromeanfreqz          
+ fbodyaccmagmean
+ fbodyaccmagstd
+ fbodyaccmagmeanfreq         
+ fbodybodyaccjerkmagmean
+ fbodybodyaccjerkmagstd
+ fbodybodyaccjerkmagmeanfreq 
+ fbodybodygyromagmean
+ fbodybodygyromagstd
+ fbodybodygyromagmeanfreq    
+ fbodybodygyrojerkmagmean
+ fbodybodygyrojerkmagstd
+ fbodybodygyrojerkmagmeanfreq

