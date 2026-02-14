sum <-function(a,b)
{
  return(a+b)
}

num1<-23
num2<-30
operation<-"add"
arithmetic_calculator <- function(num1, num2, operation) {
  result <- switch(operation,
    "add" = sum(20,30),
    "subtract" = num1 - num2,
    "multiply" = num1 * num2,
    "divide" = if (num2 != 0) num1 / num2 else "Error: Division by zero",
    "modulo" = num1 %% num2,
    "Invalid operation"
  )
  return(result)
}
#function call
result <- arithmetic_calculator(num1, num2, operation)
cat("Result:", result, "\n")
