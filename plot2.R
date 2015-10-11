datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plotdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globaldata <- as.numeric(plotdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, globaldata, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()