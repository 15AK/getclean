# Course project, peer-graded-assignment: Coursera Getting and Cleaning Data
# 07/04/2017
# status: running

setwd("~/Projects/GettingAndCleaningData/")

library("dplyr")


## Read the data into R

# Read test data into R

subjectTest <- read.table("./getclean/data/UCI HAR Dataset/test/subject_test.txt")
names(subjectTest) <- "subjectid"
xTest <- read.table("./getclean/data/UCI HAR Dataset/test/X_test.txt")
featuresNames <- readLines("./getclean/data/UCI HAR Dataset/features.txt") 
names(xTest) <- featuresNames
yTest <- read.table("./getclean/data/UCI HAR Dataset/test/y_test.txt")
names(yTest) <- "activity"

# merge dataframes test
Testdf <- cbind(subjectTest,yTest,xTest)

# Read train data into R
subjectTrain <- read.table("./getclean/data/UCI HAR Dataset/train/subject_train.txt")
names(subjectTrain) <- "subjectid"
yTrain <- read.table("./getclean/data/UCI HAR Dataset/train/y_train.txt")
names(yTrain) <- "activity"
xTrain <- read.table("./getclean/data/UCI HAR Dataset/train/X_train.txt")
names(xTrain) <- featuresNames


# merge dataframes train
Traindf <- cbind(subjectTrain,yTrain,xTrain)

# merge dataframes train and test
HumActD <- rbind(Testdf, Traindf)

# extract measurements with mean() and std(), subjectid, activity

SubHumActD <- HumActD[grep("mean\\(\\)|subjectid|std\\(\\)|activity",
                           names(HumActD), value = TRUE)]

# use descriptive activity names to name activities

SubHumActD$activity[(grep("1",SubHumActD$activity))] <- "walking"
SubHumActD$activity[(grep("2",SubHumActD$activity))] <- "walkingup"
SubHumActD$activity[(grep("3",SubHumActD$activity))] <- "walkingdown"
SubHumActD$activity[(grep("4",SubHumActD$activity))] <- "sitting"
SubHumActD$activity[(grep("5",SubHumActD$activity))] <- "standing"
SubHumActD$activity[(grep("6",SubHumActD$activity))] <- "laying"


# SubHumActD$activity <- as.factor(SubHumActD$activity)
# SubHumActD$subjectid <- as.factor(SubHumActD$subjectid)


#str(SubHumActD$activity)
#str(SubHumActD$subjectid)


HumActdf <- tbl_df(SubHumActD) # to use dplyr data needs to be in the data frame table
    # format
# remove all are objects in the environment except the tidy HAR data

rm(list= ls()[!(ls() %in% "HumActdf")])

meandf <- HumActdf %>% 
    group_by(activity, subjectid) %>% 
    summarise_each (funs(mean))
write.table(meandf, file = "./getclean/HARmean.txt")


#rm(list = ls())
#data <- read.table("./getclean/HARmean.txt", header = TRUE)
#View(data)


str(meandf)


# fileConn<-file("./getclean/varnames.txt")
# writeLines(test, fileConn)
# close(fileConn)


