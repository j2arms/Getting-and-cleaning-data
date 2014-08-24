## run_analysis.R

## necessary libraryies
library(plyr)

## read in original data

## If you are using a different Layout yoe need to declare the decimal, oherwise the numbers are not recognized
##

xTrain = read.table("./train/X_train.txt",header=FALSE,dec = ".")
yTrain = read.table("./train/Y_train.txt",header=FALSE,dec = ".")
subject_Train = read.table("./train/subject_train.txt",header=FALSE,dec = ".")

xTest = read.table("./test/X_test.txt",header=FALSE,dec = ".")
yTest = read.table("./test/Y_test.txt",header=FALSE,dec = ".")
subject_Test = read.table("./test/subject_test.txt",header=FALSE,dec = ".")

activityLabels <- read.table("./activity_labels.txt", header=FALSE)
features <- read.table("./features.txt", header=FALSE)


## add headings
feature_names <- features$V2 #convert to vector
colnames(xTrain) <- feature_names
colnames(xTest) <- feature_names


## merge x and y first.

mTrain <- cbind(subject_id=subject_Train, activity_id=yTrain,xTrain)
mTest <- cbind(subject_Test,yTest,xTest)

mtt <- rbind(mTrain,mTest)
colnames(mtt)[1] <- "subject_id"
colnames(mtt)[2] <- "activity_id"


## add activity names
activityLength <- as.numeric(nrow(activityLabels)) 
for (i in 1:activityLength)
{
  mtt[mtt$activity_id == i,2] <- as.character(activityLabels[activityLabels$V1 == i,2])
}

## clean the data and names

mergedCleaned <- mtt[,grep("subject|activity|mean|std",names(mtt),value=TRUE)]
names(mergedCleaned) <- tolower(gsub("\\(|\\)|-|_|,","",names(mergedCleaned)))

## summarize

tidyData <- ddply(mergedCleaned,.(subjectid,activityid),colwise(mean))

## output

write.table(tidyData,"tidyData.txt",row.name=FALSE,sep=",",dec=".")