setwd('~/Sandbox/ExData_Plotting1/')

t=read.table(file='household_power_consumption.txt', header=T, sep=';', na.strings='?', colClasses=c('character','character',rep('numeric', times=7)))
t <- t[which(t$Date=="1/2/2007" | t$Date=="2/2/2007"), ]
t$datetime <- as.POSIXct(strptime(paste(t$Date, t$Time), "%d/%m/%Y %H:%M:%S"))

png(filename="plot3.png", width=480, height=480)
plot(Sub_metering_1 ~ datetime, t, type='l', xlab="", ylab="Energy sub metering")
lines(Sub_metering_2 ~ datetime, t, col='red')
lines(Sub_metering_3 ~ datetime, t, col='blue')
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))
dev.off()