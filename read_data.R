# function fetches the archive with data (if not fetched already, and reads csv data from it)
read_data <- function() {
  zip_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  zip_file <- "power.zip"
  if (!file.exists(zip_file))
    download.file(zip_url, zip_file, method="curl")
  cols <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  dat <- read.csv(unz(zip_file, "household_power_consumption.txt"), sep=";", header=F, skip=66638, nrow=2880,
                  col.names=cols)
  dat$Date <- strptime(with(dat, paste(dat$Date, dat$Time)), format="%d/%m/%Y %H:%M:%S")
  dat$Time <- NULL
  dat
}