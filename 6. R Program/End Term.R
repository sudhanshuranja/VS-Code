# Import data set on sales . Describe the data structure and dataset . Perform descriptive statistics 
# 1. Create a histogram for sales_amount column in the data set sales_data.csv using ggplot2.
#2. Include the code and discuss the insight gained from the histogram regarding sales distribution.
# Interpret in detail using appropriate graphs.


library(ggplot2)

getwd()

summary(sales_data)

colnames(sales_data)

# Read CSV file
sales_data <- read.csv("sales_data.csv")

# Check the column names (optional)
# names(sales_data)

ggplot(sales_data, aes(x = Sales_Amount)) +
  geom_histogram(binwidth = 300, fill = "lightblue", color = "black") +
  labs(main = "Sales of amazon Histogram", x = "Sales", y = "Frequency")
