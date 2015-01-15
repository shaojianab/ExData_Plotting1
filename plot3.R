wData <- read.csv("household_power_consumption.txt")
subData <- subset(wData,Date=="1/2/2007" | Date=="2/2/2007")
subData <- within(subData,datetime <- as.POSIXlt(paste(Date,Time),format = "%d/%m/%Y %T"))
subData <- subset(subData, select = -c(Date,Time))
yname <- "Energy sub metering"
png(filename="plot3.png")
with(subData, {
plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = yname)
lines(datetime, Sub_metering_2, type = "l", col = "red")
lines(datetime, Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black","red","blue"),
legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
} )
dev.off()
