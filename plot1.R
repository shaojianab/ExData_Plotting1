setwd("H:\\Coursera\\Exploratory Data Analysis")
a<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
b<-a[which(a$Date=="1/2/2007" | a$Date=="2/2/2007"),]
png(file="plot1.png")
hist(b,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.off() 


![plot1](H:/Coursera/Exploratory Data Analysis/plot1.png) 
