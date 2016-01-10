##Please put the file "household_power_consumption.txt" in the Working directory.
p1full <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,
                     header=TRUE, sep = ";", dec = ".")
p1sub <- p1full[p1full$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(p1sub$Date,p1sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(p1sub$Global_active_power)
s1 <- as.numeric(p1sub$Sub_metering_1)
s2 <- as.numeric(p1sub$Sub_metering_2)
s3 <- as.numeric(p1sub$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, s1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, s2, type="l", col="red")
lines(datetime, s3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
