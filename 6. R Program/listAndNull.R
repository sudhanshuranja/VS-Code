# a condition to check NA (null value) elements

v <- c(NA , 23,45,12,NA)
v[is.na(v)]
v[is.na(v)] <- 200
v[1] <-20


#creating a list containing a vector, a matrix and a list
list_Values <- list(name = c("Subh", "manav", "Ali Baba"),
                    arr = array(1:6, dim = c(2,3)),
                      mat= matrix(c(20,30,5,2,63,84), nrow= 2),
                      slist = list("BCA","Btect","pharmacy","Biotechnology"))

my_list[[3]] # Access first element
#using name indexing


#access the name element
my_list$age 
my_list$new_element <- "Name"

#using single square bracket 



#modifying elements 
my_list$city <- "Muzaffarpur"

#byindex
my_list[[7]]<- "Extra item"

#applying function to the list items
lapply(my_list, class)

lapply(my_list, length)

#using sapply ()(return vector)
sapply(my_list , class)


#convert list to vector
unlist (my_list)


df<- as.data.frame(my_list)







