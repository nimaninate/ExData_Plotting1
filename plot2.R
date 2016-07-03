hpc <- read.csv("~/Downloads/household_power_consumption.txt", sep=";")
Subhpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(Subhpc$Date, Subhpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(Subhpc$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 