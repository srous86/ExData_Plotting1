plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
## Creates plot of Timestamp
lines(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_2, type = "l", col = "red" )
## Adds line graph for Timestamp vs Sub metering 2 data in red
lines(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_3, type = "l", col = "blue" )
## Adds line graph for Timestamp vs Sub metering 3 data in blue
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Adds legend