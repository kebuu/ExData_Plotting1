data <- read.csv("filteredData.csv", header = T, stringsAsFactors=F)
png("plot1.png")
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col ="red")
dev.off()