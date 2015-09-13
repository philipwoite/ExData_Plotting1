library(dplyr)

# How to save reference: http://stackoverflow.com/questions/7144118/how-to-save-a-plot-as-image-on-the-disk

png(file="plot2.png",width=480,height=480)

# Axes and titles reference: http://www.statmethods.net/advgraphs/axes.html

#plot(workingDataset$Date,workingDataset$Global_active_power, type= "l", xlab = "", ylab = "Global Active Power (kilowatts)")
#axis(side = 1, at=c(0:2))
#dev.off()

# http://redheadedstepdata.io/a-few-simple-plots-in-r/
workingDatasetSplit <- split(workingDataset, workingDataset$Time, drop = TRUE)
intervalGlobalActivePower <- sapply(workingDatasetSplit, function(workingDataset) mean(workingDataset$Global_active_power))

intervalGlobalActivePower <- sapply(workingDatasetSplit, function(x) mean(as.numeric(x$Global_active_power)))
plot(intervalGlobalActivePower, type = "l",     main = "",      xlab = "",     ylab = "Global Active Power (kilowatts)")
     dev.off()