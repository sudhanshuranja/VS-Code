# Create the data frame from the image
exam_data <- data.frame(
  x = c(65, 67, 71, 71, 66, 75, 67, 70, 71, 69, 69),   # third exam scores
  y = c(175, 133, 185, 163, 126, 198, 153, 163, 159, 151, 159)  # final exam scores
)

# View data
print(exam_data)

# 1. Fit Linear Regression Model
model <- lm(y ~ x, data = exam_data)

# 2. Summary of Model
cat("=== Linear Regression Summary ===\n")
summary(model)

#summary(model) gives detailed results:
#Coefficients (intercept and slope)
#R-squared (how well the model fits)
#p-values (significance of predictors)
#Residual standard error, etc.

# 3. Plot the Regression Line
ggplot(exam_data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Linear Regression: Final vs Third Exam Scores",
       x = "Third Exam Score (x)",
       y = "Final Exam Score (y)") +
  theme_minimal()

# 4. Residual Analysis
exam_data$residuals <- resid(model)
exam_data$predicted <- predict(model)

cat("\n=== Residuals ===\n")
print(exam_data)

# 5. Residual Plot
ggplot(exam_data, aes(x = predicted, y = residuals)) +
  geom_point(color = "darkgreen") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray") +
  labs(title = "Residuals vs Predicted",
       x = "Predicted Final Exam Score",
       y = "Residuals") +
  theme_minimal()

# 6. Model Statistics
cat("\n=== Model Statistics ===\n")
cat("Intercept:", coef(model)[1], "\n")
cat("Slope:", coef(model)[2], "\n")
cat("R-squared:", summary(model)$r.squared, "\n")
