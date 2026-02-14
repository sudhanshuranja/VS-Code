#Step 1 : Create Data 

team <- c(rep("North",5), rep("South",5), rep("West",5))
sales <- c(52,49,51,53,50,      #North
           48,50,47,46,49,      #South
           55,54,56,57,53)      #West

sales_data <- data.frame(team, sales)
print(sales_data)

#step 4 : Perform one-way ANOVA 
anova_model <- aov(sales ~ team, data = sales_data)
anova_results <- summary(anova_model)

print("anova_Table")
print(anova_results)

#step 5 : Extract f value and compare
f_calculated <- anova_results[[1]]$`F value`[1]
F_critical <- 3.88 # given question (df1=2, df2=12, alpha=0.05)
cat("|n Calculated F =", f_calculated)
cat("|n Critical F =", F_critical)


if (f_calculated > F_critical) {
  cat("|n Conclusion: Reject the null hypothesis. There is a significant difference in mean sales among the teams.")
} else {
  cat("|n Conclusion: Fail to reject the null hypothesis. No significant difference in mean sales among the teams.")
}

#step 6 :visualisation 

boxplot(sales ~ team, data = sales_data,
        main = "Monthly Sales Comparison (by Team)",
        ylab = "Sales(in Lakhs)",
        col = c("lightblue", "lightgreen", "lightpink"))



# Analyse the effect of different treatment types on the growth of plants using anova. Use Inbuilt dataset "plantGrowth" .
#Analyse the effect of different diet types on chick weight using anova. Use Inbuilt dataset "ChickWeight".































