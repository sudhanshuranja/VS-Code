install.packages("arules", type = "binary")
install.packages("arulesViz")
library(arules)
library(arulesViz)

#Step 2 Create the transation dataset
transaction_list <- list(
  c("coffee", "sandwich","butter"),
  c("coffee", "sandwich"),
  c("coffee", "butter"),
  c("sandwich", "butter"),
  c("coffee", "sandwich","butter"),
  c("sandwich"),
  c("coffee","butter")
)

#step 3 convert list into transaction format
trans <- as(transaction_list, "transactions")

#step 4 explore data
cat("\n -- Transaction Summary -- \n")
summary(trans)
cat("\n -- Transaction -- \n")
inspect(trans)



#step 5 Apply Apriori Algorithm
#Minimum support = 0.5(50%)
#Minimum confidence = 0.7(70%)

rules <- apriori(trans, parameter = list(supp = 0.5, conf = 0.7, target = "rules")
                 )

#step 6 display rules
cat("\n -- Association Rules -- \n")
inspect(rules)

#step 7 sort rules by confidence 
cat("\n -- Sorted Rules by Confidence -- \n")

#step 8 Visualisation optional
cat("\n -- Visualisation of Rules -- \n")

#scatter plot
plot(rules)

#graph plot (network View)
plot(rules, method = "graph", iterative = FALSE)

#Matrix plot
plot(rules, method = "matrix", measure = "lift")
plot(rules, method = "grouped")


#step 9 Apply apriori algorithm on built-in grocery data set
#grocery data set
data("Groceries")
summary(Groceries)
inspect(Groceries[1:5])


#apply apriori algorithm on grocery data set
grocery_rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.3, target = "rules"))
inspect(grocery_rules[1:10])


#visualisation of grocery rules
plot(grocery_rules)
plot(grocery_rules, method = "graph", interactive = TRUE)
plot(grocery_rules, method = "matrix", measure = "lift")
plot(grocery_rules, method = "grouped")














# Data Analysis on Data Science Job Salaries Dataset
# 1. Load necessary libraries
library(dplyr)
library(ggplot2)
library(class)
library(arules)
library(cluster)
# 2. Load dataset
setwd("C:/Users/sudha/Downloads/archive") # Adjust if needed
dsjobs <- read.csv("Data_Science_Jobs_in_India.csv")
# 3. Data cleaning (convert salary columns to numeric)
dsjobs$avg_salary <- as.numeric(gsub("L", "", dsjobs$avg_salary
))
dsjobs$min_salary <- as.numeric(gsub("L", "", dsjobs$min_salary
))
dsjobs$max_salary <- as.numeric(gsub("L", "", dsjobs$max_salary
))

# 4. Explore dataset
str(dsjobs)
head(dsjobs)
summary(dsjobs)

# 5. Descriptive statistics
mean(dsjobs$avg_salary, na.rm=TRUE)
median(dsjobs$avg_salary, na.rm=TRUE)
getmode <- function(v) { uniqv <- unique(v); uniqv[which.max(tabulate(match(v, uniqv)))] }
getmode(dsjobs$avg_salary)
sd(dsjobs$avg_salary, na.rm=TRUE)

# 6. Data preprocessing
sum(is.na(dsjobs))
dsjobs$avg_salary[is.na(dsjobs$avg_salary)] <- median(dsjobs$avg_salary, na.rm=TRUE)
dsjobs$salary_norm <- (dsjobs$avg_salary - min(dsjobs$avg_salary)) /
  (max(dsjobs$avg_salary) - min(dsjobs$avg_salary))

# 7. Linear regression
lm_model <- lm(avg_salary ~ min_exp, data=dsjobs)
summary(lm_model)
plot(dsjobs$min_exp, dsjobs$avg_salary)
abline(lm_model, col="red")

# 8. ANOVA
anova_model <- aov(avg_salary ~ job_title, data=dsjobs)
summary(anova_model)
boxplot(avg_salary ~ job_title, data=dsjobs, las=2, main="Salary Distribution by Job")

# 9. Clustering (K-means)
cluster_data <- dsjobs[c("avg_salary","min_exp")]
fit <- kmeans(cluster_data, centers=3)
dsjobs$cluster <- fit$cluster
ggplot(dsjobs, aes(x=min_exp, y=avg_salary, color=factor(cluster))) +
  geom_point() +
  labs(title="K-Means Clustering")

# 10. Classification (KNN)
set.seed(100)
split <- sample(1:nrow(dsjobs), size=0.7*nrow(dsjobs))
train <- dsjobs[split,]
test <- dsjobs[-split,]
knn_pred <- knn(train=train[c("avg_salary", "min_exp")],
                test=test[c("avg_salary", "min_exp")],
                cl=train$job_title, k=3)
table(knn_pred, test$job_title)

# 11. Association rule mining (if applicable)
# If company_name and job_title are categorical for apriori
trans_data <- as(as.data.frame(lapply(dsjobs[c("company_name","job_title")], as.factor)), "transactions")
rules <- apriori(data=trans_data, parameter=list(supp=0.01, conf=0.5))
inspect(rules[1:10])

# 12. Data visualization
ggplot(dsjobs, aes(x=min_exp, y=avg_salary)) +
  geom_point() +
  labs(title="Experience vs Salary")

hist(dsjobs$avg_salary, breaks=20, main="Salary Distribution", xlab="Salary (LPA)")

boxplot(avg_salary ~ job_title, data=dsjobs, las=2, main="Salary by Role")





















