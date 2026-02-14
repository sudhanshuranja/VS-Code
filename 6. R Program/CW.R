#analyze the effect of different diets types on chick weight using anova.use inbuilt dataset "chickweight".
# Load necessary library
library(ggplot2)
library(dplyr)
# Load the chickweight dataset
data("ChickWeight")
print(head(ChickWeight))
# Step 2: Perform ANOVA
anova_model <- aov(weight ~ Diet, data = ChickWeight)
anova_result <- summary(anova_model)
print("ANOVA Results")
print(anova_result)
# Step 3: Extract F value and compare
f_calculated <- anova_result[[1]][["F value"]][1]
f_critical <- 3.24 # given in question (df1=3, df2=56, alpha=0.05)
cat("\nCalculated F value:", f_calculated)
cat("\nCritical F value:", f_critical, "\n")
if (f_calculated > f_critical) {
  print("Reject the null hypothesis: There is a significant effect of diet types on chick weight.")
} else {
  print("Fail to reject the null hypothesis: No significant effect of diet types on chick weight.")
}
# Step 4: Visualization
boxplot(weight ~ Diet, data = ChickWeight,
        main = "Effect of Diet Types on Chick Weight",
        ylab = "Weight of Chicks",
        col = c("lightblue", "lightgreen", "lightpink", "lightyellow"))

