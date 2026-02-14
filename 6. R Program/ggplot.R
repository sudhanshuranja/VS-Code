ggplot(data = mtcars) +
  labs(title = "MTCars Data Plot")
View(mtcars)

# Aesthetic Layer
ggplot(data = mtcars, aes(x = hp, y = mpg))+
  labs(title = "MTCars Data Plot")

# Geometric layer
ggplot(data = mtcars, aes(x = hp, y = mpg, col = "red")) +
  geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

View(mtcars)
# Adding size
ggplot(data = mtcars, aes(x = hp, y = mpg, size = vs,alpha = disp)) +
  geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

# Adding shape and color
ggplot(data = mtcars, aes(x = hp, y = mpg, col = factor(cyl),
                          shape = factor(am))) +geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

# Histogram plot
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Horsepower",
       x = "Horsepower",
       y = "Count")






View(Titanic)
ggplot(data = Titanic,aes(x=age ,y= survived))+
  barplot(age)+ labs(title = "titanic age survived",
                     x="age",
                     y="survived"
  )


# Facet Layer
# Separate rows according to transmission type
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()

p + facet_grid(am ~ .) +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")


# Separate columns according to cylinders
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()

p + facet_grid(
  . ~ cyl) +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

View()

library(ggplot2)
# Sample data
df <- data.frame(x = 1:10, y = (1:10)^2)

# Basic scatter plot
ggplot(df, aes(x, y)) +
  geom_point(size = 3) +
 scale_x_continuous(breaks = seq(2, 8, by = 2))  +  # Adjust x-axis limits
 scale_y_continuous(breaks = seq(20, 80, by = 20))    # Adjust y-axis limits


