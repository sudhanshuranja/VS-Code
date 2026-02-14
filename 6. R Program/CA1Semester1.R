#Q1. titanic dataset

library(titanic)
library(dplyr)

# Load the Titanic dataset
data("titanic_train")

# Display structure
str(titanic_train)

# Display summary statistics
summary(titanic_train)

# Check dimensions (rows and columns)
dim(titanic_train)

#Q2. 
titanic_train$Fare_Normalized <- (titanic_train$Fare - min(titanic_train$Fare)) / 
  (max(titanic_train$Fare) - min(titanic_train$Fare))

min(titanic_train$Fare_Normalized)
max(titanic_train$Fare_Normalized)


#Q3.
# Count passengers in each class
passenger_count <- table(titanic_train$Pclass)

# Arrange in descending order
passenger_count <- sort(passenger_count, decreasing = TRUE)

# Print the result
passenger_count

#Q4.
# Filter and count
result <- titanic_train %>%
  filter(Pclass %in% c(1, 2), Age < 18, Survived == 1) %>%
  group_by(Sex) %>%
  summarise(Count = n())

# Print the result
result

#Q5.
# Map Survived to "Yes" or "No"
titanic_train$Survived <- ifelse(titanic_train$Survived == 1, "Yes", "No")

# Group and summarise
result <- titanic_train %>%
  group_by(Pclass, Sex) %>%
  summarise(
    TotalPassengers = n(),
    SurvivalRate = mean(Survived == "Yes")
  )

# Print the result

result

#Q6.
titanic_train$Survival_Status <- ifelse(titanic_train$Freq < 50, "Low",
                                        ifelse(titanic_train$Freq <= 100, "Medium", "High"))
head(titanic_train)
tail(titanic_train)


#Q7.
library(tidyr)

titanic_long <- titanic_train %>%
  gather(Attribute, Value, Sex, Age)

# View the reshaped data
head(titanic_long)

#Q8.
titanic_train %>%
  count(Sex) %>%
  pivot_wider(names_from = "Sex", values_from = "n") %>%
  print()


#Q9.
titanic_train %>%
  unite("Class_Age", Pclass, Age, sep = "_") %>%
  
  head(10)


#Q10.
titanic_train %>%
  unite("Class_Age", Pclass, Age, sep = "_") %>%
  separate(Class_Age, into = c("Class", "Age"), sep = "_", convert = TRUE) %>%
  head(10)




