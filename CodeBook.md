# CodeBook
## Instruction List

This repository includes the program *run_analysis.R* that performs all
the tasks in the final assignment of 
**Getting and Cleaning Data Course Project**

You just need to run this script that downloads and unzip the file and performs
the 5 steps defined in the assignment. Finally the script saves the two 
generated data sets.

A copy of all intermediate variables is kept in the execution environment

## Steps performed

- Download the file from provided Url
- Unzip the file
- load the 3 files (x,y, and subject) for test in the data.frame mytable1
- load the 3 files (x,y, and subject) for train in the data.frame mytable2
- join the two data.frame in one called step1
- filter all mean() and std() fields and store in data frame step2. 
Also the fields activity and subject that were not explicitily required in the assignment are included because are necessary for further steps
- load the activity descriptions and merge with the previously treated data in a new data.frame called step3. The column activity is removed as it is redundant with activityDescription
- step4 is not necessary as the columns where renamed as part of the load process, so just the step3 data.frame is copied into the step4 data.frame
- step5 performs a summary calculating the average (mean) of all variables by subject and activity
- finally the two final data-frame (step4 and step5) are saved

## Data dictionary

- activityDescription

  Possible values

  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
  
- fBodyAcc-mean()-X

  Mean of measured data

- fBodyAcc-mean()-Y

  Mean of measured data
  
- fBodyAcc-mean()-Z

  Mean of measured data
  
- fBodyAcc-std()-X

  Standard Deviation of measured data
  
- fBodyAcc-std()-Y

  Standard Deviation of measured data
  
- fBodyAcc-std()-Z

  Standard Deviation of measured data
  
- fBodyAccJerk-mean()-X

  Mean of measured data
  
- fBodyAccJerk-mean()-Y

  Mean of measured data
  
- fBodyAccJerk-mean()-Z

  Mean of measured data
  
- fBodyAccJerk-std()-X

  Standard Deviation of measured data
  
- fBodyAccJerk-std()-Y

  Standard Deviation of measured data
  
- fBodyAccJerk-std()-Z

  Standard Deviation of measured data
  
- fBodyAccMag-mean()
  
  Mean of measured data
  
- fBodyAccMag-std()

  Standard Deviation of measured data
  
- fBodyBodyAccJerkMag-mean()

  Mean of measured data
  
- fBodyBodyAccJerkMag-std()

  Standard Deviation of measured data
  
- fBodyBodyGyroJerkMag-mean()

  Mean of measured data
  
- fBodyBodyGyroJerkMag-std()

  Standard Deviation of measured data
  
- fBodyBodyGyroMag-mean()

  Mean of measured data
  
- fBodyBodyGyroMag-std()

  Standard Deviation of measured data
  
- fBodyGyro-mean()-X

  Mean of measured data
  
- fBodyGyro-mean()-Y

  Mean of measured data
  
- fBodyGyro-mean()-Z

  Mean of measured data
  
- fBodyGyro-std()-X

  Standard Deviation of measured data
  
- fBodyGyro-std()-Y

  Standard Deviation of measured data
  
- fBodyGyro-std()-Z

  Standard Deviation of measured data
  
- subject

  Possible values 1 to 30. The number assigned to each subject
  
- tBodyAcc-mean()-X

  Mean of measured data
  
- tBodyAcc-mean()-Y

  Mean of measured data
  
- tBodyAcc-mean()-Z

  Mean of measured data
  
- tBodyAcc-std()-X

  Standard Deviation of measured data
  
- tBodyAcc-std()-Y

  Standard Deviation of measured data
  
- tBodyAcc-std()-Z

  Standard Deviation of measured data
  
- tBodyAccJerk-mean()-X

  Mean of measured data
  
- tBodyAccJerk-mean()-Y

  Mean of measured data
  
- tBodyAccJerk-mean()-Z

  Mean of measured data
  
- tBodyAccJerk-std()-X

  Standard Deviation of measured data
  
- tBodyAccJerk-std()-Y

  Standard Deviation of measured data
  
- tBodyAccJerk-std()-Z

  Standard Deviation of measured data
  
- tBodyAccJerkMag-mean()

  Mean of measured data
  
- tBodyAccJerkMag-std()

  Standard Deviation of measured data
  
- tBodyAccMag-mean()

  Mean of measured data
  
- tBodyAccMag-std()

  Standard Deviation of measured data
  
- tBodyGyro-mean()-X

  Mean of measured data
  
- tBodyGyro-mean()-Y

  Mean of measured data
  
- tBodyGyro-mean()-Z

  Mean of measured data
  
- tBodyGyro-std()-X

  Standard Deviation of measured data
  
- tBodyGyro-std()-Y

  Standard Deviation of measured data
  
- tBodyGyro-std()-Z

  Standard Deviation of measured data
  
- tBodyGyroJerk-mean()-X

  Mean of measured data
  
- tBodyGyroJerk-mean()-Y

  Mean of measured data
  
- tBodyGyroJerk-mean()-Z

  Mean of measured data
  
- tBodyGyroJerk-std()-X

  Standard Deviation of measured data
  
- tBodyGyroJerk-std()-Y

  Standard Deviation of measured data
  
- tBodyGyroJerk-std()-Z

  Standard Deviation of measured data
  
- tBodyGyroJerkMag-mean()

  Mean of measured data
  
- tBodyGyroJerkMag-std()

  Standard Deviation of measured data
  
- tBodyGyroMag-mean()

  Mean of measured data
  
- tBodyGyroMag-std()

  Standard Deviation of measured data
  
- tGravityAcc-mean()-X

  Mean of measured data
  
- tGravityAcc-mean()-Y

  Mean of measured data
  
- tGravityAcc-mean()-Z

  Mean of measured data
  
- tGravityAcc-std()-X

  Standard Deviation of measured data
  
- tGravityAcc-std()-Y

  Standard Deviation of measured data
  
- tGravityAcc-std()-Z

  Standard Deviation of measured data
  
- tGravityAccMag-mean()

  Mean of measured data
  
- tGravityAccMag-std()

  Standard Deviation of measured data
