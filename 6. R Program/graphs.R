# Load necessary library
library(ggplot2)

# Load dataset
data(mtcars)

# Set up plotting layout
par(mfrow = c(2, 2))  # 2 rows, 2 columns for plots

# Scatter Plot: Horsepower vs MPG
p1 <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  ggtitle("HP vs MPG") +
  theme_minimal()

# Bar Chart: Count of Cars by Cylinders
 ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "steelblue") +
  ggtitle("Number of Cars by Cylinder") +
  theme_minimal()



# Histogram: MPG Distribution
p3 <- ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(bins = 10, fill = "purple", color = "black") +
  ggtitle("MPG Distribution") +
  theme_minimal()

# Boxplot: MPG by Cylinders
p4 <- ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot() +
  ggtitle("MPG by Cylinder") +
  theme_minimal()

# Arrange all plots in a grid
library(gridExtra)
grid.arrange(p1, p2, p3, p4, ncol = 2)





library(ggplot2)

# Load Titanic dataset (use correct dataset)
data("titanic_train", package = "titanic")

# Create a bar plot of survival count by age
ggplot(data = Titanic, aes(x = Age, fill = factor(Survived))) +
  geom_bar() +
  labs(title = "Titanic Age vs Survived",
       x = "Age",
       y = "Count",
       fill = "Survived")
