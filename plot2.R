setwd('~/Sandbox/ExData_Plotting1/')

t=read.table(file='household_power_consumption.txt', header=T, sep=';', na.strings='?', colClasses=c('character','character',rep('numeric', times=7)))
t <- t[which(t$Date=="1/2/2007" | t$Date=="2/2/2007"), ]
t$datetime <- as.POSIXct(strptime(paste(t$Date, t$Time), "%d/%m/%Y %H:%M:%S"))

png(filename="plot2.png", width=480, height=480)
plot(Global_active_power ~ datetime, t, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()