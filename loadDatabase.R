library(data.table)
dataset <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?")
dataset[,1] <- as.Date(dataset[,1], "%d/%m/%Y")

# colnames reference: Comment by Steven Beaupré : http://stackoverflow.com/questions/28240183/r-data-frame-headers-based-on-existing-row-containing-text-and-numbers

colnames(dataset) <- lapply(dataset[1,], as.character)
colnames(dataset)[1] <- "Date"

workingDataset <- dataset[dataset[,1] %between% c("2007-02-01","2007-02-02"),]


head(workingDataset)
