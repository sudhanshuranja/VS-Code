# Creating a Data Frame
# A data frame is a table or a two-dimensional array-like structure 
#in which each column contains values of one variable and each row 
#contains one set of values from each column.
df <- data.frame(
  Name = c("John", "Jane", "Doe"),
  Age = c(23, 25, 28),
  Gender = c("Male", "Female", "Male")
)

# Viewing the Data Frame
# You can view the entire data frame by simply typing its name.
print(df)

# Accessing Columns
# You can access a specific column using the $ operator.
names <- df$Name
print(names)

# Accessing Rows
# You can access specific rows using the row index.
first_row <- df[1, ]
print(first_row)

# Accessing Specific Elements
# You can access specific elements using the row and column indices.
element <- df[1, 2]  # Accesses the element in the first row and second column
print(element)

# Adding a New Column
# You can add a new column to the data frame by assigning 
#a vector to a new column name.
df$Height <- c(170, 165, 180)
print(df)

# Removing a Column
# You can remove a column using the NULL assignment.
df$Height <- NULL
print(df)

# Filtering Rows
# You can filter rows based on a condition.
adults <- df[df$Age > 24, ]
print(adults)

# Summary Statistics
# You can get summary statistics for each column in the data frame.
summary(df)

# Merging Data Frames
# You can merge two data frames by a common column.
df2 <- data.frame(
  Name = c("John", "Jane", "Doe"),
  Salary = c(50000, 60000, 55000)
)
merged_df <- merge(df, df2, by = "Name")
print(merged_df)

# Handling Missing Values
# You can handle missing values using functions like is.na() and na.omit().
df_with_na <- data.frame(
  Name = c("John", "Jane", NA),
  Age = c(23, 25, 28)
)
# Check for NA values
print(is.na(df_with_na))
# Remove rows with NA values
clean_df <- na.omit(df_with_na)
print(clean_df)

# Applying Functions to Data Frames
# You can apply functions to each column using lapply() or sapply().
mean_ages <- sapply(df$Age, mean)
print(mean_ages)

# Iterating Over Rows
# You can iterate over rows using a for loop.
for (i in 1:nrow(df)) {
  row <- df[i, ]
  print(row)
}
