sum(30,21,56)

prod(2,3)

seq(1,15,2)
rm(a)

v<- c(4L,7L,TRUE,5)
print(v)
is(v)
v<- 20:40
V
is.vector(v)
is(v)
is(v)













#Sort a Vector
#To sort items in a vector alphabetically or numerically, use the sort() function:
fruits <- c("banana", "apple", "orange", "red", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

numbers[-c(3:5)]


sort(fruits,decreasing = TRUE)  # Sort a string
sort(numbers) # Sort numbers
#length of vector

length(numbers)



#Access Vectors
fruits <- c("banana", "apple", "orange")
which(fruits=="orange")
fruits[nchar(fruits)== 5 ]




fruits[1]
# Access the first and third item (banana and orange)

fruits[c(1, 3)]

# Access all items except for the first item
fruits[c(-1)]
v <-c(20,30,40,50)
# Access elements by condition
v[v > 20 & v<50]  # Output: 30 40
which(v !=40)

#String Operations (for character vectors)
str_vec <- c("apple", "banana", "cherry")

nchar(str_vec)      # Number of characters: 5 6 6
toupper(str_vec)    # Convert to uppercase: "APPLE" "BANANA" "CHERRY"
tolower(str_vec)    # Convert to lowercase: "apple" "banana" "cherry"
paste("fruit:", str_vec[1])  # Concatenation: "fruit: apple" ...

#Set Operations
x <- c(1, 2, 3)
y <- c(3, 4, 5)

union(x, y)         # Union: 1 2 3 4 5
intersect(x, y)     # Intersection: 3
setdiff(x, y)       # Difference: 1 2
setequal(x, y)      # Check if sets are equal: FALSE


v <- c(FALSE,TRUE)

v






# Output: "1" "apple" "TRUE" (coerced to character)

#Special Functions for Logical Vectors
any(v > 20)     # Check if any element satisfies condition: TRUE
all(v > 5)      # Check if all elements satisfy condition: TRUE





#Change an Item
#To change the value of a specific item, refer to the index number:
fruits <- c("banana", "apple", "orange", "mango", "lemon")
paste0(v,collapse = "--")

fruits[1] <- "pear"
fruits


#Repeat Vectors
#To repeat vectors, use the rep() function:

repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

repeat_times <- rep(c(1,2,3), times = 3)

repeat_times
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))

repeat_indepent

#........
c<-c(12,34,56)
d<-c(2,3,4,5,6,7)
c*4
a = c(10, 20, 30)
b = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
sum(b)
b + a



v <- rnorm(1000)raaaaxzzzvvvvvvvvvmmmmmmmmmmmmmmmmmmmmvvvvvvvvvazzzzz
v <- rnorm(1000)r

v <- rnorm(1000)r
plot(v, main="My scatter plot")
v