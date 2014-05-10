# Plot 3. Plot the three sub_metering variables
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses="character")
sub <-subset(data, Date == "1/2/2007" | Date == "2/2/2007")


#generate graph
png('plot3.png',width = 480, height = 480, units = "px", pointsize = 12)
plot(wDays, sub$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(wDays, sub$Sub_metering_2, type="l", xlab="", col="red")   
lines(wDays, sub$Sub_metering_3, type="l", xlab="", col="blue")   
legend("topright",legend=colnames(sub[7:9]), col=c("black","red","blue"),bg="white",lwd=2)
dev.off()