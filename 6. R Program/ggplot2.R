# Load Required Libraries
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")
install.packages("maps")
install.packages("ggmap")
install.packages("ggplot2movies")
install.packages("ggmap")


library(dplyr)
library(tidyr)
library(ggplot2)
library(maps)
library(ggmap)

# Box plot for average wind speed
data(airquality)

boxplot(airquality$Wind, main = "Average wind speed\
at La Guardia Airport",
        xlab = "Miles per hour", ylab = "Wind",
        col = "orange", border = "brown",
        horizontal = TRUE, notch = TRUE)



# Scatter plot for Ozone Concentration per month
data(airquality)

plot(airquality$Ozone, airquality$Month,
     main ="Scatterplot Example",
     xlab ="Ozone Concentration in parts per billion",
     ylab =" Month of observation ", pch = 5)



x <- 1:10
y <- x^2

plot(x, y, pch = 17, col = "blue", cex = 2,
     main = "Example of pch = 17 (solid triangle)")



plot(1:25, rep(1, 25), pch = 1:25, cex = 2, xlab = "pch values", ylab = "", yaxt = "n") 
text(1:25, rep(1.5, 25), labels = 1:25, cex = 0.7)




# Set seed for reproducibility

# Create example data
data <- matrix(rnorm(50, 0, 5), nrow = 5, ncol = 5)

# Column names
colnames(data) <- paste0("col", 1:5)
rownames(data) <- paste0("row", 1:5)

# Draw a heatmap
heatmap(data)



install.packages("maps")
# Read dataset and convert it into
# Dataframe
data <- read.csv("worldcities.csv")
df <- data.frame(data)

# Load the required libraries
library(maps)
map(database = "world")

# marking points on map
points(x = df$lat[1:500], y = df$lng[1:500], col = "Red")