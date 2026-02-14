# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
thismatrix

#Elements are filled column-wise by default.
#To fill row-wise, 
mat1 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
print(mat1)




mat2 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
print(mat)

result<-cbind(mat1,mat2)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry","raspberry"))

# Print the new matrix
newmatrix

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix
#Check if "apple" is present in the matrix:

"apple" %in% thismatrix

#Matrix Multiplication
#Element-wise Multiplication (*)
result <- mat1 * mat2
print(result)
#Matrix Multiplication (%*%)
result <- mat1 %*% mat2  # Proper matrix multiplication
print(result)

#Transpose of a Matrix
mat
t_mat <- t(mat)
print(t_mat)






#Loop through the matrix items and print them:
  
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}