library(lubridate)

Sys.setlocale("LC_TIME", "English")
data <- read.csv("filteredData.csv", header = T, stringsAsFactors=F)
data$date_time <- dmy_hms(paste(data$Date, data$Time))

png("plot3.png")
plot(data$date_time, data$Sub_metering_1,xlab = "", ylab = "Energy sub metering", type = "n")
lines(data$date_time, data$Sub_metering_1, col="black")
lines(data$date_time, data$Sub_metering_2, col="red")
lines(data$date_time, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
dev.off()