# Download the file

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("data")) {
  dir.create("data")
}
download.file(fileUrl, destfile = "./data/data.zip", method = "curl")

dateDownloaded <- date()
print(dateDownloaded)

# Unzip the file

unzip("./data/data.zip",exdir="./data")

base_dir <- "./data/UCI HAR Dataset"
mynames <- read.table(file.path(base_dir,"features.txt"))[[2]]

## step 1 Merges the training and the test sets to create one data set

# load x test data into a data.frame (mytable1). 
# set column names to the ones in the features.txt (prev. loaded in mynames)
# add y (activity) and subject test data into the data.frame

mytable1 <- read.table(file.path(base_dir,"test/X_test.txt"))
names(mytable1)<-mynames
mytable1$activity <- read.table(file.path(base_dir,"test/y_test.txt"))[[1]]
mytable1$subject <- read.table(file.path(base_dir,"test/subject_test.txt"))[[1]]

# load train data in a new data.frame (mytable2) 
# using the same steps than test

mytable2 <- read.table(file.path(base_dir,"train/X_train.txt"))
names(mytable2)<-mynames
mytable2$activity <- read.table(file.path(base_dir,"train/y_train.txt"))[[1]]
mytable2$subject <- read.table(file.path(base_dir,"train/subject_train.txt"))[[1]]

# merge both tables in a new data.frame called mytable

step1<-rbind(mytable1,mytable2)

# step 2 Extracts only the measurements on the mean and standard deviation 
# for each measurement. 

# note: also activity and subject as they are required in further steps

step2<-step1[,grep("activity|subject|mean\\(\\)|std\\(\\)",names(step1))]

# step 3 Uses descriptive activity names to name the activities in the data set

activity<-read.table(file.path(base_dir,"activity_labels.txt"))
names(activity)<-c("id","activityDescription")

step3<-merge(step2,activity,by.x = "activity", by.y = "id")

# note: I decided to remove the activity column as now is redundant with
# activityDescription

step3$activity<-NULL

# step 4 Appropriately labels the data set with descriptive variable names. 

# note: as part of the step 1 names in features.txt where added, that
# already are descriptive nothing to do in this step

step4<-step3

# step 5 From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.

library(dplyr)
step5<-summarize_at(group_by(step4,subject,activityDescription),
             vars(1:(length(step4)-2)),
             list(mean))

# final save datasets for further use

write.csv(step4,"tidy.csv")
write.csv(step5,"summary.csv")

