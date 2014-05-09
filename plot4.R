if (!exists("dat")) {
  source("read_data.R")
  dat <- read_data()
}

png(file="plot4.png")#, bg="transparent")
par(mfrow=c(2,2))

plot(dat$Date, dat$Global_active_power, type='l', xlab="", ylab="Global Active Power")

plot(dat$Date, dat$Voltage, type='l', xlab="datetime", ylab="Voltage")

plot(dat$Date, dat$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(dat$Date, dat$Sub_metering_2, type='l', col="red")
lines(dat$Date, dat$Sub_metering_3, type='l', col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty='n')

plot(dat$Date, dat$Global_reactive_power, type='l', xlab="datetime", ylab="Global_reactive_power")

dev.off()