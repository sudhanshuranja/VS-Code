
#Handle Missing Values
#Check missing values:

sum(is.na(data))  # Total missing values

colSums(is.na(data))  # Missing values per column
#Remove missing values:

data_clean <- na.omit(data)

#Replace missing values:
data$column[is.na(data$column)] <- mean(data$column, na.rm=TRUE)  # Replace with mean

#Handle Duplicates
data <- data[!duplicated(data), ]

View(airquality)
airquality <- airquality[!duplicated(airquality), ]


