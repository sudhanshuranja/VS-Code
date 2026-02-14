ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = factor(IsSetosa))) +
  geom_point(size = 3) +
  stat_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE, color = "black") +
  labs(title = "Logistic Regression: Predicting Setosa",
       x = "Petal Length",
       y = "Petal Width",
       color = "Is Setosa") +
  theme_minimal()




# New flower data
new_flowers <- data.frame(Petal.Length = c(1.3, 4.5, 5.1),
                          Petal.Width = c(0.2, 1.3, 1.8))




# Predict probabilities and classes
new_flowers$Predicted_Prob <- predict(model_logit, newdata = new_flowers, type = "response")
new_flowers$Predicted_Class <- ifelse(new_flowers$Predicted_Prob > 0.5, "Setosa", "Not Setosa")

new_flowers

#step 6 visualisation and prediction




