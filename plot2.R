if (!exists("dat")) {
  source("read_data.R")
  dat <- read_data()
}

png(file="plot2.png", bg="transparent")
plot(dat$Date, dat$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")
dev.off()