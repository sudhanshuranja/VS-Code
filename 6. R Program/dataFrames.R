df <- data.frame(
  pId = 1:10,
  name = c("Jerry", "Gotham", "Robert", "Tina", "Lisa", "Mike", "Sophia", "Daniel", "Emma", "Chris"),
  age = c(15, 14, 16, 17, 15, 16, 14, 18, 17, 15),
  gender = c("Male", "Male", "Male", "Female", "Female", "Male", "Female", "Male", "Female", "Male"),
  qualification = c("BCA", "CSE", "Agronomy", "BCA", "CSE", "BBA", "BCA", "ECE", "Agronomy", "CSE"),
  stringsAsFactors = FALSE 
)

print(df)


df[,4]
df[3,]

name_to_check <- "Tina"  # Change this to any name you want to check

if (name_to_check %in% df$name) {
  print(paste(name_to_check, "is present in the dataset."))
} else {
  print(paste(name_to_check, "is NOT present in the dataset."))
}

# add a new row
new_row <- data.frame(pId = 11, name = "John", age = 50, score = 92)
df <- rbind(df, new_row)

view.df <- rbind(view.df,data.frame(pId = 13, name = c("John", "Sinha", "Kumar"), age = c(50,28,32), score = c(92,32,45)))
print(view.df)

# add a new column
view.df&gender <- c("Female","Male","Male","Male") #Add a new column to the data frame
