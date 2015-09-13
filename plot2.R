library(dplyr)

# How to save reference: http://stackoverflow.com/questions/7144118/how-to-save-a-plot-as-image-on-the-disk

png(file="plot2.png",width=480,height=480)

# Axes and titles reference: http://www.statmethods.net/advgraphs/axes.html

plot(workingDataset$Date,workingDataset$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
