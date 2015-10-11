datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plotdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
meteringdata1 <- as.numeric(plotdata$Sub_metering_1)
meteringdata2 <- as.numeric(plotdata$Sub_metering_2)
meteringdata3 <- as.numeric(plotdata$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(date_time, meteringdata1, type="l", xlab="", ylab="Energy sub metering")
lines(date_time, meteringdata2, type="l", col = "red")
lines(date_time, meteringdata3, type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()