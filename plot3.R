if (!exists("dat")) {
  source("read_data.R")
  dat <- read_data()
}

png(file="plot3.png")#, bg="transparent")
plot(dat$Date, dat$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(dat$Date, dat$Sub_metering_2, type='l', col="red")
lines(dat$Date, dat$Sub_metering_3, type='l', col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()