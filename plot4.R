library(lubridate)

Sys.setlocale("LC_TIME", "English")
data <- read.csv("filteredData.csv", header = T, stringsAsFactors=F)
data$date_time <- dmy_hms(paste(data$Date, data$Time))

png("plot4.png")
par(mfrow = c(2,2))

plot(data$date_time, data$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")

plot(data$date_time, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

plot(data$date_time, data$Sub_metering_1,xlab = "", ylab = "Energy sub metering", type = "n")
lines(data$date_time, data$Sub_metering_1, col="black")
lines(data$date_time, data$Sub_metering_2, col="red")
lines(data$date_time, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))

plot(data$date_time, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()