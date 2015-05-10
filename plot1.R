setwd('~/Sandbox/ExData_Plotting1/')

t=read.table(file='household_power_consumption.txt', header=T, sep=';', na.strings='?', colClasses=c('character','character',rep('numeric', times=7)))
t <- t[which(t$Date=="1/2/2007" | t$Date=="2/2/2007"), ]

png(filename="plot1.png", width=480, height=480)
hist(t$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()