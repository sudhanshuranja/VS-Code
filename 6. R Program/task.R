View(airquality)

sum(is.na(airquality))  # Total missing values

colSums(is.na(airquality))  # Missing values per column


#Remove missing values:

data_clean <- na.omit(airquality)
View(data_clean)
sum(is.na(data_clean)) 

#Replace missing values:
airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm=TRUE)  