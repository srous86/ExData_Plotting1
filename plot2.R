hhpc_used_new$Timestamp <-paste(hhpc_used_new$Date, hhpc_used_new$Time)

plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")