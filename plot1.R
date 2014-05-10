# Plot 1. Histogram of variable "global active power"
#Step 1. load data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses="character")
sub <-subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#Step 2. generate plot
sub$Global_active_power<-as.numeric(sub$Global_active_power) 
hist(sub$Global_active_power, 
     main = paste("Global Active Power"),
     col = "red", xlab = "Global Active Power (kilowatts)")
dev.copy(png,'plot1.png',width = 480, height = 480, units = "px", pointsize = 12)
dev.off()