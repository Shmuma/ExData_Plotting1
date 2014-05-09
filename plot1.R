if (!exists("dat")) {
  source("read_data.R")
  dat <- read_data()
}

png(file="plot1.png", bg="transparent")
hist(dat$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()