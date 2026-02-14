# Load necessary libraries
library(ggplot2)
library(GGally)  # For pair plot

# Sample dataset
data(mpg)

# Bar Chart
ggplot(mpg, aes(x = class)) +
  geom_bar(fill = "blue") +
  theme_minimal() +
  ggtitle("Bar Chart")


# Pie Chart
df <- data.frame(
  category = c("A", "B", "C", "D"),
  values = c(30, 20, 40, 10)
)
ggplot(df, aes(x = "", y = values, fill = category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  theme_void() +
  ggtitle("Pie Chart")






# Pair Plot
pair_plot <- ggpairs(mpg[, c("displ", "hwy", "cty")])

# Histogram
histogram <- ggplot(mpg, aes(x = hwy)) +..........
geom_histogram(bins = 20, fill = "blue", color = "black") +
  theme_minimal() +
  ggtitle("Histogram")

# Cumulative Frequency Distribution (CFD)
cfd_plot <- ggplot(mpg, aes(x = hwy)) +
  stat_ecdf(geom = "step", color = "blue") +
  theme_minimal() +
  ggtitle("Cumulative Frequency Distribution")

# Boxplot
boxplot_chart <- ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot(fill = "lightblue") +
  theme_minimal() +
  ggtitle("Boxplot")

# Grouping (Facet Wrap)
grouping_plot <- ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  facet_wrap(~ class) +
  theme_minimal() +
  ggtitle("Grouped Scatter Plot")

# Display plots
print(bar_chart)
print(pie_chart)
print(pair_plot)
print(histogram)
print(cfd_plot)
print(boxplot_chart)
print(grouping_plot)
