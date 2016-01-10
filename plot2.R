##Please put the file "household_power_consumption.txt" in the Working directory.
p1full <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,
                     header=TRUE, sep = ";", dec = ".")
p1sub <- p1full[p1full$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(p1sub$Date, p1sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(p1sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
