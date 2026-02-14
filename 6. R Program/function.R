sum(10,20,50,40)
prod(20,3)
print(sum(30,50,23))

v<- c(1,2,3,4)
print(v)


seq(1,15,3)

# for removing the things that is appearing in the environment section
rm(A)
rm(num1)
rm(num2)
rm(number1)
rm(number2)
rm(operation)
rm(result)

print <- function(x){
  return(5 * x)
}

print(5)


#for finding the factorial of a number
factorial <- function(n) {
  fact = 1
  for (i in 1:n) {
    fact = fact * i  # Multiply `fact` by the current number `i`
  }
  return(fact)  # Return the calculated factorial
}

# Call the function
factorial(5)


two<- function(a,b){
  return ( a+b )
}

two(2,3)




















