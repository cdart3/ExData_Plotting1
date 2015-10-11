datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plotdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globaldata <- as.numeric(plotdata$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globaldata, col = "red", main = "Global Active Power", xlab = "Global Active Power (kW)")
dev.off()