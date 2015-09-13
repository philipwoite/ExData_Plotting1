library(data.table)
dataset <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?")
dataset[,1] <- as.Date(dataset[,1], "%d/%m/%Y")
workingDataset <- dataset[dataset[,1] %between% c("2007-02-01","2007-02-02"),]
