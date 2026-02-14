#Corelation analysis
#1. Calculate the pearson corelation coefficient between discount percentage and units sold  to ascess the strength and direction of their relationship.
#2. Calculate the corelation between discount and profit to understand how discount impact profitably

#Simple linear regression_model
#1. Model units sold as a function of discount (%) to understand how discount influence sales volume
#2. model profit as a function of discount to elevate the direct impact of discount on profitability.

#Multiple linear regression_model1. 
#1. model profit as a function of discount (%) unit_sold to elevate the combined effect of these variable on profitability.


# Load Libraries
library(ggplot2)
library(tidyr)     
library(dplyr)

# Load Data
getwd()
Regression <- read.csv("sample_inventory_data.csv")

# Rename Columns for easy access
colnames(Regression) <- c("discount", "units_sold", "profit")

# Correlation Analysis
cor(Regression$discount, Regression$units_sold)  # Discount vs Units Sold
cor(Regression$discount, Regression$profit)      # Discount vs Profit

# Simple Linear Regression
model1 <- lm(units_sold ~ discount, data = Regression)
summary(model1)

model2 <- lm(profit ~ discount, data = Regression)
summary(model2)

# Multiple Linear Regression
model3 <- lm(profit ~ discount + units_sold, data = Regression)
summary(model3)


# Visualization: Units Sold vs Discount
ggplot(Regression, aes(x = discount, y = units_sold)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Simple Linear Regression: Units Sold vs Discount",
       x = "Discount (%)",
       y = "Units Sold")

# Visualization: Profit vs Discount
ggplot(Regression, aes(x = discount, y = profit)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Simple Linear Regression: Profit vs Discount",
       x = "Discount (%)",
       y = "Profit")
