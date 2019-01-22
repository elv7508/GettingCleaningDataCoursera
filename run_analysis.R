
##1. download data

## create dir if doesn's exist
if(!file.exists("./CourseProjectData")) {dir.create("./CourseProjectData")}

## download files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./CourseProjectData/ProjectData.zip")

## unzip the files
unzip(zipfile = "./CourseProjectData/ProjectData.zip", exdir = "./CourseProjectData")

##2. Reading data
#read training data
x_train <- read.table("./CourseProjectData/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./CourseProjectData/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./CourseProjectData/UCI HAR Dataset/train/subject_train.txt")

#read test data
x_test <- read.table("./CourseProjectData/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./CourseProjectData/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./CourseProjectData/UCI HAR Dataset/test/subject_test.txt")

#read features
features <- read.table("./CourseProjectData/UCI HAR Dataset/features.txt")

#read activity labels
activityLabels <- read.table("./CourseProjectData/UCI HAR Dataset/activity_labels.txt")

#set column names training data
colnames(x_train) <- features[, 2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjID"

#set column names test data
colnames(x_test) <- features[, 2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjID"

#set column names for activityLabels
colnames(activityLabels) <- c("activityID", "activityType")

##3.merge data sets##

#merge training data
merge_train <- cbind(y_train, subject_train, x_train)

#merge test data
merge_test <- cbind(y_test, subject_test, x_test)

#merge all data sets into one
merge_all <- rbind(merge_train, merge_test)

##4. Extract the relevant measurments

#extract column names
columnNames <- colnames(merge_all)

#extract mean and std
mean_std <- (grepl("activityID", columnNames) | grepl("subjID", columnNames) | grepl("mean..", columnNames) | grepl("std..", columnNames))

#selection mean and std
mean_std_selection <- merge_all[, mean_std == TRUE]

##5. descriptive names
#name activities
activityNames <- merge(mean_std_selection, activityLabels, by = "activityID", all.x=TRUE)

#descriptive names
names(activityNames) <- gsub("^t", "time", names(activityNames))
names(activityNames) <- gsub("^f", "frequency", names(activityNames))
names(activityNames) <- gsub("Acc", "Accelometer", names(activityNames))
names(activityNames) <- gsub("Gyro", "Gyroscope", names(activityNames))
names(activityNames) <- gsub("Mag", "Magnitude", names(activityNames))
names(activityNames) <- gsub("BodyBody", "Body", names(activityNames))

##6. tidy data
#tidy data
tidyData <- aggregate(. ~subjID + activityID, activityNames, mean)
tidyDataSet <- tidyData[order(tidyData$subjID, tidyData$activityID), ]

##7. tidy data txt
#write tidy data to a txt file
write.table(tidyDataSet, "tidyDataSet.txt", row.names = FALSE)
