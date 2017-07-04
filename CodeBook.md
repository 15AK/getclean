---
title: "CodeBook.md"
author: "AK15"
date: "July 4, 2017"
output: html_document
---


### Variables activity and subjectid

activity
    activity label: walking, walkingup, walkingdown, sitting, standing, laying
subjectid
    No. from 1-30 - identification ID of the 30 subjects who carried out the experiment

## All other variables
For each record it is provided
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- From the 561-feature vector with time and frequency domain variables only those are 
    included with either measuremnts of the mean or the standard deviation. The
    table holds the arithmetic mean each variable for each activity and each
    subject

Variable names:

X1.tBodyAcc.mean...X
X2.tBodyAcc.mean...Y
X3.tBodyAcc.mean...Z
X4.tBodyAcc.std...X
X5.tBodyAcc.std...Y
X6.tBodyAcc.std...Z
X41.tGravityAcc.mean...X
X42.tGravityAcc.mean...Y
X43.tGravityAcc.mean...Z
X44.tGravityAcc.std...X
X45.tGravityAcc.std...Y
X46.tGravityAcc.std...Z
X81.tBodyAccJerk.mean...X
X82.tBodyAccJerk.mean...Y
X83.tBodyAccJerk.mean...Z
X84.tBodyAccJerk.std...X
X85.tBodyAccJerk.std...Y
X86.tBodyAccJerk.std...Z
X121.tBodyGyro.mean...X
X122.tBodyGyro.mean...Y
X123.tBodyGyro.mean...Z
X124.tBodyGyro.std...X
X125.tBodyGyro.std...Y
X126.tBodyGyro.std...Z
X161.tBodyGyroJerk.mean...X
X162.tBodyGyroJerk.mean...Y
X163.tBodyGyroJerk.mean...Z
X164.tBodyGyroJerk.std...X
X165.tBodyGyroJerk.std...Y
X166.tBodyGyroJerk.std...Z
X201.tBodyAccMag.mean..
X202.tBodyAccMag.std..
X214.tGravityAccMag.mean..
X215.tGravityAccMag.std..
X227.tBodyAccJerkMag.mean..
X228.tBodyAccJerkMag.std..
X240.tBodyGyroMag.mean..
X241.tBodyGyroMag.std..
X253.tBodyGyroJerkMag.mean..
X254.tBodyGyroJerkMag.std..
X266.fBodyAcc.mean...X
X267.fBodyAcc.mean...Y
X268.fBodyAcc.mean...Z
X269.fBodyAcc.std...X
X270.fBodyAcc.std...Y
X271.fBodyAcc.std...Z
X345.fBodyAccJerk.mean...X
X346.fBodyAccJerk.mean...Y
X347.fBodyAccJerk.mean...Z
X348.fBodyAccJerk.std...X
X349.fBodyAccJerk.std...Y
X350.fBodyAccJerk.std...Z
X424.fBodyGyro.mean...X
X425.fBodyGyro.mean...Y
X426.fBodyGyro.mean...Z
X427.fBodyGyro.std...X
X428.fBodyGyro.std...Y
X429.fBodyGyro.std...Z
X503.fBodyAccMag.mean..
X504.fBodyAccMag.std..
X516.fBodyBodyAccJerkMag.mean..
X517.fBodyBodyAccJerkMag.std..
X529.fBodyBodyGyroMag.mean..
X530.fBodyBodyGyroMag.std..
X542.fBodyBodyGyroJerkMag.mean..
X543.fBodyBodyGyroJerkMag.std..