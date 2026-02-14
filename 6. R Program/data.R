# Check if this is correct

# Load datasets and the airquality dataset
data()
data(airquality)
View(airquality)
?airquality

# Count total missing values
sum(is.na(airquality)) # total missing values

# Column-wise missing value count
colSums(is.na(airquality))

# Remove missing values
data_clean <- na.omit(airquality)
View(data_clean)
sum(is.na(data_clean))

# Replace missing values in 'Ozone' column with mean (except NAs)
airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm = TRUE)

# Install and load tidyverse if needed
# install.packages("tidyverse") # Uncomment if not installed

library(tidyverse)
library(tidyr)

# Create a valid data frame (all columns must have the same length)
df <- data.frame(
  ID = c(1,2,3,4),
  Math = c(80,75,89,79),
  Science = c(85,75,90,80),
  English = c(90,82,67,50)
)
View(df)

# Convert wide to long format
df_long <- df %>%
  pivot_longer(cols = Math:English, names_to = "Subject", values_to = "Score")

View(df_long)
