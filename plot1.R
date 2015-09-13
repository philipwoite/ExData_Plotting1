library(dplyr)
#with(workingDataset, plot(Global_Active_Power, ))

with(workingDataset, hist(Global_active_power))

hist(workingDataset[,"Global_active_power"])
