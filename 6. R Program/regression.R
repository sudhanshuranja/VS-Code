







# 1. Load the data
x <- c(65, 67, 71, 71, 66, 75, 67, 70, 71, 69, 69)
y <- c(175, 133, 185, 163, 126, 198, 153, 163, 159, 151, 159)

# 2. Create a data frame
data <- data.frame(x, y)

# 3. Fit the linear regression model
model <- lm(y ~ x, data = data)

# 4. Show regression summary
summary(model)

# 5. Make a prediction (e.g., for x = 72)
predict(model, data.frame(x = 72))

# 6. Plot the data and regression line
plot(data$x, data$y, 
     main = "Regression: Final Score vs Third Exam Score", 
     xlab = "Third Exam Score (out of 80)", 
     ylab = "Final Exam Score (out of 200)", 
     pch = 19, col = "blue")

abline(model, col = "red", lwd = 2)

# 7. Add grid for clarity
grid()















x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
getwd()
# Apply the lm() function.
relation <- lm(y~x)

print(summary(relation))
# Find weight of a person with height 170.

a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)



# Load built-in mtcars dataset
data(mtcars)

# View first few rows
head(mtcars)
# Step 1: Fit the regression model
model <- lm(mpg ~ wt, data = mtcars)
# Step 2: Print summary
cat("Model Summary:\n")
print(summary(model))
#Prediction 
predict(model, newdata = data.frame(wt = 4))

# Step 3: Plot data and regression line
plot(mtcars$wt, mtcars$mpg,
     main = "Regression of MPG on Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     pch = 19, col = "darkgreen")
# Add the regression line
abline(model, col = "blue", lwd = 2)


# Step 4: Add model equation to the plot
coef_vals <- coef(model)
eq <- paste0("y = ", round(coef_vals[1], 2), " + ", round(coef_vals[2], 2), "x")
legend("topright", legend = eq, col = "blue", lwd = 2)


# Load necessary libraries
library(ggplot2)

# Load data
data(mtcars)

# 1. ANOVA: Test if mpg differs by number of cylinders
anova_result <- aov(mpg ~ factor(cyl), data = mtcars)
cat("----- ANOVA -----\n")
print(summary(anova_result))

# 2. Correlation: Pearson correlation between mpg and hp
cor_mpg_hp <- cor(mtcars$mpg, mtcars$hp)
cat("\n----- Correlation (mpg vs hp) -----\n")
print(cor_mpg_hp)

# Correlation matrix for selected variables
cat("\n----- Correlation Matrix -----\n")
print(cor(mtcars[, c("mpg", "hp", "wt", "disp")]))

# 3. Single Linear Regression: mpg ~ hp
single_model <- lm(mpg ~ hp, data = mtcars)
cat("\n----- Single Linear Regression (mpg ~ hp) -----\n")
print(summary(single_model))

# 4. Multiple Linear Regression: mpg ~ hp + wt
multi_model <- lm(mpg ~ hp + wt, data = mtcars)
cat("\n----- Multiple Linear Regression (mpg ~ hp + wt) -----\n")
print(summary(multi_model))




# 5. Plotting Regressions
cat("\n----- Plotting Single Regression (mpg ~ hp) -----\n")
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  ggtitle("Single Linear Regression: mpg ~ hp")

# 6. Polynomial Regression: mpg ~ poly(hp, 2)
poly_model <- lm(mpg ~ poly(hp, 2), data = mtcars)
cat("\n----- Polynomial Regression (mpg ~ poly(hp, 2)) -----\n")
print(summary(poly_model))
library(ggplot2)
# Plot Polynomial Regression
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  stat_smooth(method = "lm", formula = y ~ poly(x, 2), col = "darkgreen") +
  ggtitle("Polynomial Regression: mpg ~ hp²")


