library(dplyr)

png(file="plot1.png",width=480,height=480)


hist(as.numeric(workingDataset[,"Global_active_power"]),  xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()

