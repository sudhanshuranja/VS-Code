vec <- c(9,8,5,6,8,5,9,6,5,8,6,5,8,6,2,3,21)
arr <- array(vec, dim = c(3,3)) #convert to 2*3
arr
# Array_name <- array

arr4<- arr(sort(c(9,8,5,6,8,5,9,6,5,8,6,5,8,6,2,3,21), dim = c (3,2,2),
                dimnames = list(
                  c("row1","rows2"),
                  c("cols1","cols2","cols3"),
                  c("Matrix1", "matrix2")
                )))


# if an item exist or not 
5 %in% arr

#Amount of Rows and Columns
dim(arr)
#arr length
length(arr)
#loop Through an Array 
for ( x in arr){
  print(x)
}


#combine arrays
#column wise merge
arr1
arr2
Combined_col<-cbind(arr1 , arr2)

#column wise merge

arr1
arr2
Combined_col<-rbind(arr1 , arr2)



#matrix multiplication

arr *2 # multiply all element by 2
print (arr1 + arr2)
#Statistical operation

sum (arr)
mean(arr)
min(arr)
max(arr)

mat1 <- array(1:4 , dim = c(1,2,3))
mat1 <- array(c(3,10,1,6) , dim = c(2,2))
res















           
                      