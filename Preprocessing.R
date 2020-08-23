data <- read.table("household_power_consumption.txt", sep = ";", header = T)# read the data and create data frame
data1 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007" ) # subset the data between two dates
#convert the fields from character to date and numeric formats for processing:
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y") 
data1$Global_active_power <- as.numeric(as.character(data1$Global_active_power)) 
data1$Global_reactive_power <- as.numeric(as.character(data1$Global_reactive_power))
data1$Voltage <- as.numeric(as.character(data1$Voltage))
data1 <- transform(data1, timestamp = as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
data1$Sub_metering_1 <- as.numeric(as.character(data1$Sub_metering_1))
data1$Sub_metering_2 <- as.numeric(as.character(data1$Sub_metering_2))
data1$Sub_metering_3 <- as.numeric(as.character(data1$Sub_metering_3))