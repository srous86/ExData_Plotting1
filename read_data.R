hhpc_used_new <- read.csv.sql("household_power_consumption.txt", sep = ';', header = TRUE,sql="select * from file where Date in ('1/2/2007', '2/2/2007')")

hist(hhpc_used_new, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" , ylim = c(0, 1200), breaks = 12, xlim = c(0,6))


hhpc_used_new$Date <- as.Date(hhpc_used_new$Date, "%d/%m/%Y")
## turn character date into real date classification

hhpc_used_new$Global_active_power <- as.numeric(as.character(hhpc_used_new$Global_active_power))

hhpc_used_new$Global_reactive_power <- as.numeric(as.character(hhpc_used_new$Global_reactive_power))

hhpc_used_new$Sub_metering_1 <- as.numeric(as.character(hhpc_used_new$Sub_metering_1))
hhpc_used_new$Sub_metering_2 <- as.numeric(as.character(hhpc_used_new$Sub_metering_2))
hhpc_used_new$Sub_metering_3 <- as.numeric(as.character(hhpc_used_new$Sub_metering_3))

hhpc_used_new$Voltage <- as.numeric(as.character(hhpc_used_new$Voltage))