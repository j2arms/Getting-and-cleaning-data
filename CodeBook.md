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

