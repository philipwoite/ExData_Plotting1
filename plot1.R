library(dplyr)

# How to save reference: http://stackoverflow.com/questions/7144118/how-to-save-a-plot-as-image-on-the-disk

png(file="plot1.png",width=480,height=480)

# Axes and titles reference: http://www.statmethods.net/advgraphs/axes.html

hist(as.numeric(workingDataset[,"Global_active_power"]),  xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()

