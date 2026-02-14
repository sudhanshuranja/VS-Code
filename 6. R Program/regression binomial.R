library(ggplot2)
library(tidyverse)

data(iris) # Not 'irish'
head(iris)

# Create IsSetosa variable (capital 'S' for consistency)
iris$IsSetosa <- ifelse(iris$Species == "setosa", 1, 0)

# Select columns (correct spelling and capitalization)
head(iris[, c("Petal.Length", "Petal.Width", "IsSetosa")])

# Logistic regression model
model_logist <- glm(IsSetosa ~ Petal.Length + Petal.Width,
                    data = iris,
                    family = binomial)

summary(model_logist3.








