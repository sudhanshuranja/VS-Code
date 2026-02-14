#array
#vector
#sorting
#length of the vector

number<- c(1,6,3,5,8,3,4,9,3)
sort(number)

fruits<- c("bananas","apple","mango","litchi")
sort(fruits)
sort(fruits,decreasing = TRUE)

length(fruits)
length(number)

#character 
#integer 
#numeric 
#logical

#access vector
fruits<- c("bananas","apple","mango","litchi","water melon")
fruits[1]
#Accessing the 1st and 3rd element of the given array
fruits[c(1,3)]
#Access all item accept the given number 
fruits[c(-1)]



#repeat vector
# to repeat vector,use rep() function

repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

repeat_times <- rep(c(1,2,3), times = 3)
repeat_times

repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent














