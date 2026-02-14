library(ggplot2)
library(tidyverse)
data("mtcars")

View(mtcars)
#predict car mileage (mpg) based on vehicle weight (wt) using the mt cars dataset
model <- lm(mpg ~ wt, data = mtcars)
summary(model)
#visualize the data and the regression line
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Car Mileage vs Vehicle Weight",
       x = "Vehicle Weight (1000 lbs)",
       y = "Miles Per Gallon (mpg)") +
  theme_minimal()
#make predictions
new_data <- data.frame(wt = c(2.5, 3.0, 3.5))
predictions <- predict(model, newdata = new_data)
print(predictions)

#predict house price based n several features (agriculture+ examination + education + catholic) using swisss dataset
model2 <- lm(Fertility ~ Agriculture + Examination + Education + Catholic, data = swiss)
summary(model2)
#visualize the data and the regression line
ggplot(swiss, aes(x = Education, y = Fertility)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, col = "red") +
  labs(title = "Fertility vs Education",
       x = "Education",
       y = "Fertility") +
  theme_minimal()
#make predictions
new_data2 <- data.frame(Agriculture = c(50, 60), Examination = c(15, 20), Education = c(10, 15), Catholic = c(20, 30))
predictions2 <- predict(model2, newdata = new_data2)
print(predictions2)

#model the non linear relationship between women's height and weight using the women dataset


#predict survival of passengers based on age and class using the Titanic dataset
data("Titanic")
titanic_df <- as.data.frame(Titanic)
model3 <- glm(Survived ~ Age + Class, data = titanic_df, family = binomial)
summary(model3)
#make predictions
new_data3 <- data.frame(Age = c(20, 30, 40), Class = c("1st", "2nd", "3rd"))
predictions3 <- predict(model3, newdata = new_data3, type = "response")
print(predictions3)



