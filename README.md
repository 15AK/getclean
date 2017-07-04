---
title: "README2.md"
author: "AK15"
date: "July 4, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
### Coursera Coures Project "Getting and CLeaning Data"

The course project was done using the Human Activity Recognition
Using Smartphones Dataset Version 1.0

The dataset is available on the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
These data include a README explaining the details of the experiment, the individual files
include in the zip Folder and further informations on the data set. A full discription
is available on the site whter the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The next chunk shows the code for downloading and saving the data.

```{r}
setwd("~/Projects/GettingAndCleaningData/")

library("dplyr")
library("downloader")

if(!file.exists("./getclean/data")) {
    dir.create("./getclean/data")
}

# Download Human Activity Activity Recognition data using smart phone data
zipurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipurl, dest = "getclean/data/dataset.zip", mode ="wb")
unzip("getclean/data/dataset.zip", exdir = "./getclean/data/")

datedownloaded <- date()

```

### Files in the getclean Folder

The Course project folder "getclean" indludes the following files: 
- README.md
- CodeBook.md
- run_analysis.R
- HARmean.txt

## README.md
explains how all the scripts work and how they are connected

## CodeBook.md
lists the varialbes from the dataset HARmean.txt

## run_analysis.R

# Read test data into R
The relevat data were read into R from the files subject_test.txt, X_test.tst,
y_test.txt using read.table. Also the variable names were changed to descriptive 
names, in case of Xtest all the feature names form the file features.txt were used 
to name the variables. 
Using cbind() the dataframes were combined. 

The same procedure was used to create a dataframe of all the relevant training
data sets.
Using rbind() the test- and the train-data were combined to form one dataframe: 
HumActD.

# extract measurements with mean() and std(), subjectid, activity

To extract the measurementw with mean() and std() the grep() function and regular
expressions were used. Also the columns subjectid and activity were extracted and 
stored in a new dataframe subHumActD

For the variable activity, the activty categories described by numbers were replaced
with descriptive activity names. 

# calculate the average or arithemtic mean of each variable for each activity 
# and each subject and store it in an independent tidy data set

To calculate the arithmetic mean of each variable for each activity and each
subject the group_by and summarise_each functions from the dplyr package were 
employed. 
The new, tidy data frame was saved as HARmean.txt using write.table. The data 
set is tidy as each observation is forms o row and each variable is forms one column.
And only one type of observational unit - the Human Activity data of 30 individuals -
is stored in the table. These are, according to Hadley Wickham "Tidy Data" the 
three characteristics of Tidy data.