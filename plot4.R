# Plot 4. Generate a panel of graph
#Step 1. load data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses="character")
sub <-subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Step 2. generate graph
png('plot4.png',width = 480, height = 480, units = "px", pointsize = 12,bg = "white")
# plot code for plot 1
par(mfrow=c(2,2))
sub$Global_active_power<-as.numeric(sub$Global_active_power)
plot(wDays, sub$Global_active_power, type="l", xlab="", ylab="Global Active Power")
# plot code for plot 2
plot(wDays, sub$Voltage, type="l", xlab="daytime", ylab="Voltage")
# plot code for plot 3
plot(wDays, sub$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(wDays, sub$Sub_metering_2, type="l", xlab="", col="red")   
lines(wDays, sub$Sub_metering_3, type="l", xlab="", col="blue")   
legend("topright",legend=colnames(sub[7:9]), bty = "n",
       col=c("black","red","blue"),bg="white",lwd=2)
# plot code for plot 4
sub$Global_reactive_power<-as.numeric(sub$Global_reactive_power)
plot(wDays, sub$Global_reactive_power, type="l", xlab="daytime", ylab="Global_reactive_power")
dev.off()