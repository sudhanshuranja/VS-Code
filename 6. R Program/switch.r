# Define the arithmetic Calculator function
arithmeticCalculator <- function(num1, num2, operation) {
  result <- switch(
    operation,
    "add" = num1 + num2,
    "subtract" = num1 - num2,
    "multiply" = num1 * num2,
    "divide" = if (num2 != 0) num1 / num2 else "Error: Division by zero!",
    "modulo" = num1 %% num2,
    "Invalid Operation"
  )
  return(result)
}

# Prompt user for input
cat("Enter the 1st number: ")
num1 <- as.numeric(readline())

cat("Enter the 2nd number: ")
num2 <- as.numeric(readline())

cat("Enter the operation (add, subtract, multiply, divide, modulo): ")
operation <- tolower(readline())

# Call the arithmetic Calculator function
result <- arithmeticCalculator(num1, num2, operation)

# Display the result
cat("Result:", result, "\n")
