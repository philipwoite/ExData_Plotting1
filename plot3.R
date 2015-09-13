library(dplyr)

# How to save reference: http://stackoverflow.com/questions/7144118/how-to-save-a-plot-as-image-on-the-disk

png(file="plot3.png",width=480,height=480)

# Axes and titles reference: http://www.statmethods.net/advgraphs/axes.html

#plot(workingDataset$Date,workingDataset$Global_active_power, type= "l", xlab = "", ylab = "Global Active Power (kilowatts)")
#axis(side = 1, at=c(0:2))
#dev.off()

# http://redheadedstepdata.io/a-few-simple-plots-in-r/
workingDatasetSplit <- split(workingDataset, workingDataset$Time, drop = TRUE)
intervalSubMetering1 <- sapply(workingDatasetSplit, function(workingDataset) mean(workingDataset$Sub_metering_1))
intervalSubMetering1 <- sapply(workingDatasetSplit, function(x) mean(as.numeric(x$Sub_metering_1)))
plot(intervalSubMetering1, type = "l",     main = "",      xlab = "",     ylab = "Energy sub metering")

##
#workingDatasetSplit <- split(workingDataset, workingDataset$Time, drop = TRUE)
intervalSubMetering2 <- sapply(workingDatasetSplit, function(workingDataset) mean(workingDataset$Sub_metering_2))
intervalSubMetering2 <- sapply(workingDatasetSplit, function(x) mean(as.numeric(x$Sub_metering_2)))
lines(intervalSubMetering2, type = "l", col = "red")  #,     main = "",      xlab = "",     ylab = "Global Active Power (kilowatts)")

##
#workingDatasetSplit <- split(workingDataset, workingDataset$Time, drop = TRUE)
intervalSubMetering3 <- sapply(workingDatasetSplit, function(workingDataset) mean(workingDataset$Sub_metering_3))
intervalSubMetering3 <- sapply(workingDatasetSplit, function(x) mean(as.numeric(x$Sub_metering_3)))
lines(intervalSubMetering3, type = "l", col = "blue")  #,     main = "",      xlab = "",     ylab = "Global Active Power (kilowatts)")

dev.off()