vec <- c(1, 2, 3, 4, 5, 6)
arr <- array(vec, dim = c(2, 3))  # Convert to 2x3 array
arr


data_values <- 1:12

data_values <- 1:12  # Data from 1 to 12
arr <- array(data_values, dim = c(2, 3,2))  # 2 rows, 3 columns, 2 matrices
print(arr)

arr <- array(data_values, 
             dim = c(2, 3,2), 
             dimnames = list(
               c("Row1", "Row2"),           # Row names
               c("Col1", "Col2", "Col3"),   # Column names
               c("Matrix1", "Matrix2")      # Matrix names (layers)
             ))

print(arr)


arr[2, 3, 1]  # Element at row 2, column 3, matrix 1 → Output: 6
arr[1, , 1]  # First row from the first matrix → Output: 1 3 5
arr[, 2, 1]  #Accessing a Whole Column
arr[, , 2]  # Accessing an Entire Matrix (Layer)
arr[1, c(1,3), 2]  # Accessing Multiple Elements

#Check if an Item Exists
13 %in% arr
#Amount of Rows and Columns
dim(arr)
#array length
length(arr)
#Loop Through an Array
for(x in arr){
  print(x)

}

# 9. Combine Arrays
combined_col <- cbind(arr1, arr2)  # Column-wise merge
combined_row <- rbind(arr1, arr2)  # Row-wise merge

# 7. Transpose an Array (Matrix)
transposed_arr <- t(arr1)  # Transposes the matrix