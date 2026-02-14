# Analyse the effect of different treatment types on the growth of plants using anova. Use Inbuilt dataset "plantGrowth" .

# Load necessary libraries
library(ggplot2)
library(dplyr)

# load the dataset 
data("PlantGrowth")

print(head(PlantGrowth))

#step 2 : Perform ANOVA
anova_result <- aov(weight ~ group, data = PlantGrowth)
summary(anova_result)

# Step 3: Extract F value and compare
f_calculated <- anova_summary[[1]]$`F value`[1]
F_critical <- 4.46 # given (df1=2, df2=27, alpha=0.05)
cat("\n Calculated F =", f_calculated)
cat("\n Critical F =", F_critical)

if (f_calculated > F_critical) {
  cat("\n Conclusion: Reject the null hypothesis. There is a significant difference in mean weight among the treatment groups.")
} else {
  cat("\n Conclusion: Fail to reject the null hypothesis. No significant difference in mean weight among the treatment groups.")
}

#step 4 : Visualisation
boxplot(weight ~ group, data = PlantGrowth,
        main = "Plant Growth by Treatment Group",
        ylab = "Weight",
        col = c("lightblue", "lightgreen", "lightpink"))
