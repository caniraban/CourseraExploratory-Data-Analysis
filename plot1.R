plot1 <- function() {
  hist(data1$Global_active_power, col = "Red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
  dev.copy(png, file = "plot1.png", width = 480, height = 480)
  dev.off()
  cat("Plot1.png has been saved", getwd())
}  
plot1()