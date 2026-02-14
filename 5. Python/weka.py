library(RWeka)

# Load a dataset (replace with your dataset path)
data <- read.csv("path_to_your_dataset.csv")

# Train a Bayesian Belief Network
# Replace 'class' with the name of your target variable
bayes_net <- make_Weka_classifier("weka.classifiers.bayes.BayesNet")
model <- bayes_net(class ~ ., data = data)

# Print the model summary
print(model)

# Perform probabilistic inference
# Replace 'new_data' with a data frame containing the new instances for inference
new_data <- data.frame(
    # Add your feature values here
)
predictions <- predict(model, new_data, type = "prob")

# Print the predictions
print(predictions)