

library("downloader")

if(!file.exists("data")) {
    dir.create("data")
}


zipurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipurl, dest = "dataset.zip", mode ="wb")
unzip("dataset.zip", exdir = "./data/")

datedownloaded <- date()

list.files()
list.files("./data")
