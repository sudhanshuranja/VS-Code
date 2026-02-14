# Load Required Libraries
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")

library(dplyr)
library(tidyr)
library(ggplot2)

# Set working directory (optional, if needed)
# setwd("C:/path/to/your/folder")  # Replace with your actual path
getwd()

# Load Data Sets
matches <- read.csv("matches.csv", stringsAsFactors = FALSE)
deliveries <- read.csv("deliveries.csv", stringsAsFactors = FALSE)

# Data Cleaning and Preprocessing
matches <- matches %>%
  mutate(across(c(team1, team2, winner), ~ gsub("Delhi Daredevils", "Delhi Capitals", .))) %>%
  mutate(winner = ifelse(is.na(winner), "No Result", winner))  # Replace NA winner with "No Result"

# 1. Total Matches and Wins by Each Team
total_matches <- matches %>%
  pivot_longer(cols = c(team1, team2), names_to = "team_type", values_to = "team") %>%
  count(team, name = "matches_played")

wins <- matches %>%
  filter(winner != "No Result") %>%
  count(winner, name = "wins") %>%
  rename(team = winner)

# 2. Calculate Win Percentage
win_percentage <- total_matches %>%
  left_join(wins, by = "team") %>%
  mutate(wins = replace_na(wins, 0),
         win_percentage = round((wins / matches_played) * 100, 2))


# 3. Batsman and Bowler Performance
colnames(deliveries)

# Summarize total runs scored by each batsman (column is 'batter' and 'batsman_runs')
batsman_performance <- deliveries %>%
  group_by(batter) %>%
  summarise(total_runs = sum(batsman_runs, na.rm = TRUE))

# Summarize total wickets taken by each bowler
# A wicket is counted when 'is_wicket' == 1
bowler_performance <- deliveries %>%
  filter(is_wicket == 1) %>%
  group_by(bowler) %>%
  summarise(total_wickets = n())

# 4. Merge Batsman and Bowler Data
performance <- full_join(batsman_performance, bowler_performance, 
                         by = c("batter" = "bowler")) %>%
  rename(player = batter) %>%
  replace_na(list(total_runs = 0, total_wickets = 0))

# 5. Venue-wise Win Percentage
venue_win <- matches %>%
  filter(winner != "No Result") %>%
  count(venue, winner, name = "wins") %>%
  group_by(venue) %>%
  mutate(win_percentage = round((wins / sum(wins)) * 100, 2))

# 6. Visualize Results

# Base R Histogram for Total Wickets
hist(performance$total_wickets,
     breaks = 10,
     col = "tomato",
     border = "black",
     main = "Distribution of Total Wickets by Bowlers",
     xlab = "Total Wickets",
     ylab = "Number of Players")

# Convert data to long format for easier plotting
box_data <- performance %>%
  pivot_longer(cols = c(total_runs, total_wickets),
               names_to = "Metric", values_to = "Value")

# Create the boxplot
ggplot(box_data, aes(x = Metric, y = Value, fill = Metric)) +
  geom_boxplot() +
  labs(title = "Boxplot of Total Runs and Total Wickets by Players",
       x = "Performance Metric",
       y = "Value") +
  theme_minimal()


# Win Percentage by Team
ggplot(win_percentage, aes(x = reorder(team, -win_percentage), y = win_percentage, fill = team)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Win Percentage of IPL Teams", x = "Team", y = "Win Percentage") +
  theme_minimal() +
  theme(legend.position = "none")

# Batsman vs Bowler Performance
ggplot(performance, aes(x = total_runs, y = total_wickets)) +
  geom_point(color = "blue", alpha = 0.7) +
  labs(title = "Batsman vs Bowler Performance", x = "Total Runs", y = "Total Wickets") +
  theme_minimal()

# Batsman vs Bowler Performance
plot(performance, aes(x = total_runs, y = total_wickets)) +
  geom_point(color = "blue", alpha = 0.7) +
  labs(title = "Batsman vs Bowler Performance", x = "Total Runs", y = "Total Wickets") +
  theme_minimal()

# Summarize the total runs and total wickets
data <- performance %>%
  summarise(Runs = sum(total_runs), Wickets = sum(total_wickets)) %>%
  pivot_longer(cols = everything(), names_to = "Type", values_to = "Count")

# Create the pie chart
ggplot(data, aes(x = "", y = Count, fill = Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Proportion of Total Runs vs Total Wickets") +
  theme_void()

# Venue-wise Win Percentage
ggplot(venue_win, aes(x = reorder(venue, -win_percentage), y = win_percentage, fill = winner)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  labs(title = "Win Percentage at Different IPL Venues", x = "Venue", y = "Win Percentage") +
  theme_minimal()

# 7. Top Performers
top_teams <- win_percentage %>%
  arrange(desc(win_percentage)) %>%
  head(5)

top_batsmen <- batsman_performance %>%
  arrange(desc(total_runs)) %>%
  head(5)

top_bowlers <- bowler_performance %>%
  arrange(desc(total_wickets)) %>%
  head(5)

# Print Results
cat("Top 5 Teams by Win Percentage:\n")
print(top_teams)

cat("\nTop 5 Batsmen by Total Runs:\n")
print(top_batsmen)

cat("\nTop 5 Bowlers by Total Wickets:\n")
print(top_bowlers)



# 8. Regression Analysis: Total Runs vs Total Wickets

# Run a simple linear regression
regression_model <- lm(total_wickets ~ total_runs, data = performance)

# Summary of regression model
cat("\nRegression Analysis: Total Wickets vs Total Runs\n")
summary(regression_model)

# Plot with regression line
ggplot(performance, aes(x = total_runs, y = total_wickets)) +
  geom_point(color = "blue", alpha = 0.7) +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Regression: Total Wickets vs Total Runs",
       x = "Total Runs",
       y = "Total Wickets") +
  theme_minimal()

# Polynomial Regression: Add a squared term for total_runs
poly_model <- lm(total_wickets ~ total_runs + I(total_runs^2), data = performance)
cat("\nPolynomial Regression Summary:\n")
summary(poly_model)

# Plot
ggplot(performance, aes(x = total_runs, y = total_wickets)) +
  geom_point(color = "blue") +
  stat_smooth(method = "lm", formula = y ~ poly(x, 2), color = "purple") +
  labs(title = "Polynomial Regression (Degree 2)",
       x = "Total Runs", y = "Total Wickets") +
  theme_minimal()

