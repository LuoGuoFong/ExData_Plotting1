##Please put the file "household_power_consumption.txt" in the Working directory.
p1full <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,
                     header=TRUE, sep = ";", dec = ".")
p1sub <- p1full[p1full$Date %in% c("1/2/2007","2/2/2007") ,]
gap <- as.numeric(p1sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
