# Load dataset
data(mtcars)

# 1. Numeric functions - Summary statistics
cat("Summary Statistics:\n")
print(summary(mtcars))

# 2. Standard Deviation for a selected column (mpg)
cat("\nStandard Deviation of mpg:\n")
print(sd(mtcars$mpg))

cat("\n📈 Standard Deviation of each numeric column:\n")
print(sapply(mtcars, sd))

library(ggplot2)
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 5, fill = "#69b3a2", color = "black", alpha = 0.7) +
  geom_vline(aes(xintercept = mean(mpg)), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = sd(mpg)), color = "blue", linetype = "dotted", size = 1) +
  labs(title = "Distribution of MPG with Mean and  SD", x = "MPG", y = "Count")

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 5, fill = "#69b3a2", color = "black", alpha = 0.7) +
  geom_vline(aes(xintercept = mean(mpg)), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = mean(mpg) + sd(mpg)), color = "blue", linetype = "dotted", size = 1) +
  geom_vline(aes(xintercept = mean(mpg) - sd(mpg)), color = "yellow", linetype = "dotted", size = 1) +
  labs(title = "Distribution of MPG with Mean and ±1 SD", x = "MPG", y = "Count")
# 3. Percentiles of the same column (mpg)
cat("\nPercentiles of mpg (25th, 50th, 75th):\n")
quartiles <-quantile(mtcars$mpg, probs = c(0.25, 0.5, 0.75))
print(quartiles)
Q1 <- quartiles[1]
Q3 <- quartiles[3]
IQR_value <- Q3 - Q1

print(IQR_value)

boxplot(mtcars$mpg,
        main = "Boxplot of MPG",
        ylab = "Miles Per Gallon (MPG)",
        col = "lightblue")


cat("\n🔗 Correlation Matrix:\n")
print(cor(mtcars))

install.packages("corrplot")  # Run this if not installed
library(corrplot)

cor_matrix <- cor(mtcars)
corrplot(cor_matrix, method = "color", type = "upper", 
         tl.col = "black", tl.srt = 45, col = colorRampPalette(c("blue", "white",
                                                                 "red"))(200))
# Load libraries
library(ggplot2)
library(GGally)
ggpairs(mtcars, columns = 1:4) 


# Mean, Median, Min, Max
cat("\n📉 Mean, Median, Min, Max of mpg:\n")
print(paste("Mean:", mean(mtcars$mpg)))
print(paste("Median:", median(mtcars$mpg)))
print(paste("Min:", min(mtcars$mpg)))
print(paste("Max:", max(mtcars$mpg)))
which.max(mtcars$mpg)

#mode
Data_Cars <- mtcars
names(sort(-table(Data_Cars$wt)))[1]



# Sample data
data <- c(10, 15, 14, 8, 22, 27, 30, 35, 40)

# Calculate quartiles and IQR
quartiles <- quantile(data, probs = c(0.25, 0.75))
Q1 <- quartiles[1]
Q3 <- quartiles[2]
IQR_value <- Q3 - Q1





# Print results
cat("Q1:", Q1, "\n")
cat("Q3:", Q3, "\n")
cat("IQR:", IQR_value, "\n")
