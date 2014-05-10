# Plot 2. Plot the dynamics of variable "global active power"
#Step 1. load data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses="character")
sub <-subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# generate plot
library(datasets)
wDays <- strptime(paste(sub$Date, sub$Time), format='%d/%m/%Y %H:%M:%S')
plot(wDays, sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,'plot2.png',width = 480, height = 480, units = "px", pointsize = 12)
dev.off()