#array(1:12),dim= (3,4)
#here 3 is rows and 4 is column
#syntax is
#->Array_name <- array(data, dim=(rows_size , cols_size , matrices),dim_name)
vec <- c(1,2,3,4,5,6,7,8,9)
arr <- array(vec, dim = c(3,3)) #convert to 2*3
arr



data_values <- 1:12
arr <- array(data_values,dim=c(2,3,2))
print(arr)

arr<- array(data_values,
            dim = c(2,3,2),
            dimnames = list(
            c("row1","rows2"),
            c("cols1","cols2","cols3"),
            c("Matrix1", "matrix2")
            ))
arr

print(arr)