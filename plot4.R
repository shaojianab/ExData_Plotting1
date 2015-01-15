wData <- read.csv("household_power_consumption.txt")
subData <- subset(wData,Date=="1/2/2007" | Date=="2/2/2007")
subData <- within(subData,datetime <- as.POSIXlt(paste(Date,Time),format = "%d/%m/%Y %T"))
subData <- subset(subData, select = -c(Date,Time))
png(filename="plot4.png")
par(mfrow = c(2,2))
with(subData, {
yname1 <- "Global Active Power"
plot(datetime, Global_active_power, type = "l", xlab = "", ylab = yname1)
yname2 <- "Voltage"
plot(datetime, Voltage, type = "l", ylab = yname2)
yname3 <- "Energy sub metering"
plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = yname3)
lines(datetime, Sub_metering_2, type = "l", col = "red")
lines(datetime, Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, bty = "n", col = c("black","red","blue"),
legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime, Global_reactive_power, type = "l")
} )
dev.off()
