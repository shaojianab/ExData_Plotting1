setwd("H:\\Coursera\\Exploratory Data Analysis")
a<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
b<-a[which(a$Date=="1/2/2007" | a$Date=="2/2/2007"),]
png(file="plot2.png")
plot(as.numeric(b$Global_active_power),type="l",ylim=c(0,8),ylab="Global Active Power(kilowatts)")
dev.off()
