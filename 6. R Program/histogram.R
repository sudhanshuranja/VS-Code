# Horizontal Bar Plot for 
# Ozone concentration in air
barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', horiz = TRUE)



# Histogram for Maximum Daily Temperature
data(airquality)

hist(airquality$Temp, main ="Los angeles Airport's\
Maximum Temperature(Daily)",
     xlab ="Temperature(Fahrenheit)",
     xlim = c(50, 125), col ="orange",
     freq = TRUE)



plot(2,3)

