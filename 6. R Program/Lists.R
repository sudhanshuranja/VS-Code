#syntax

list_name <- list(item1, item2, item3, ...)

list_name <- list(name1 = value1, name2 = value2, name3 = value3)

# Creating a list with different types of elements
my_list <- list(
  name = "Rohan",
  age = 25,
  scores = c(85, 90, 88),
  is_passed = TRUE
)



# Printing the list
print(my_list)

#Accessing Elements in a List
#Using double square brackets [[ ]]:

my_list[[3]]  # Access first element (name)

#Using named indexing:
my_list$age  # Access the 'name' element

#Using single square brackets [ ] (returns a sublist):
my_list[c(1,2,3)]  # Returns a list with element 'age'

#Accessing Nested Elements
my_list[[5]][[1]]

#access list names 
names(my_list)

summary(my_list)

#Modifying element
my_list[[2]] <- 30  # Change age to 30
my_list$scores <- c(95, 88, 92)  # Modify scores

#bynames adding new record 
my_list$city <- "shimla"
#byindex
my_list[[7]] <- "Extra Item"

#Applying Functions to List Elements
lapply(my_list, class)  # Get the class of each element
lapply(my_list, length)

#Using sapply() (Returns vector)
sapply(my_list, class)

#Convert List to Vector
unlist(my_list)


#Convert List to Data Frame
df <- as.data.frame(my_list)



# Creating a list containing a vector, a matrix and a list.

list_data <- list(name=c("Shubham","Arpita","Nishka"),
                  arr=array(1:6, dim=c(2,3)),
                  mat=matrix(c(40,80,60,70,90,80), nrow = 2),  
                  slist=list("BCA","MCA","B.tech")) 



names(list_data)
summary(list_data)


# Accessing the first element of the list.  
print(list_data[1])  

print(list_data[[1]][2])
# Accessing the third element. The third element is also a list, so all its elements will be printed.  
print(list_data[[3]][3])  


