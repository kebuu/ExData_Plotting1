library(lubridate)

Sys.setlocale("LC_TIME", "English")
data <- read.csv("filteredData.csv", header = T, stringsAsFactors=F)
data$date_time <- dmy_hms(paste(data$Date, data$Time))
png("plot2.png")
plot(data$date_time, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()