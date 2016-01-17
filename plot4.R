par(mfcol = c(2,2))
# Sets graphing parameters
plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power(kilowatts)")
# Creates graph of Timestamp vs global active power data
plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
#Creates 2nd graph
#Plots Timestamp vs Sub metering 1
lines(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_2, type = "l", col = "red" )
#Adds line graph for Timestamp vs Sub metering 2 data in red
lines(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Sub_metering_3, type = "l", col = "blue" )
#Adds line graph for Timestamp vs Sub metering 3 data in blue
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#Adds legend
plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")
#Creates next graph in column 2
#This graphs is Timestamp vs Voltage
plot(strptime(hhpc_used_new$Timestamp, "%Y-%m-%d %H:%M:%S"), hhpc_used_new$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")
#Creates another graph in column 2
#This plots Timestamp vs global reactive power