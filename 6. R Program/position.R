data()

library(ggplot2)
# Using stat_bin (default for geom_bar)
ggplot(mpg, aes(x = class)) +
  geom_bar(stat = "count")  # Equivalent to stat_count

# Using stat_summary to plot mean values
ggplot(mpg, aes(x = class, y = hwy)) +
  geom_bar(stat = "summary", fun = "mean")  # Plots mean highway mileage per class

# Using stat_smooth for a regression line
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(stat = "smooth", method = "lm")  # Linear regression



ggplot(mpg, aes(x = class, fill = drv)) +
  geom_bar(position = "stack")  # Bars are stacked

ggplot(mpg, aes(x = class, fill = drv)) +
  geom_bar(position = "fill")  # Bars scaled to 100%

ggplot(mpg, aes(x = class, fill = drv)) +
  geom_bar(position = "dodge")
# Bars are placed side-by-side

ggplot(mpg, aes(x = displ, y = hwy, fill = class)) +
  geom_col(position = "identity", alpha = 0.5) 







# Load required libraries
library(ggplot2)

# Create a histogram of diamond prices with density scaling
ggplot(data = diamonds, aes(x = price)) +
  geom_histogram(aes(y = ..density..), bins = 10, fill = "steelblue", color = "black", alpha = 0.7) +
  geom_density(color = "red", size = 1) + 
  labs(title = "Histogram of Diamond Prices with Density Curve",
       x = "Price (USD)", 
       y = "Density") +
  theme_new

theme_new <- theme_bw() +
  theme (text=element_text(size = 12, family = ""),
         axis.text.x = element_text(colour = "red"),
         panel.background = element_rect (fill = "pink"))

