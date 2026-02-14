#2nd part

prices <- c(150, 200, 120, 180, 300, 250, 170, 190)

prices_excluding_first <- prices[-1]

prices_above_180 <- prices[prices > 180]

prices_between_150_250 <- prices[prices >= 150 & prices <= 250]

last_three_prices <- tail(prices, 3)

print(prices_excluding_first)

print(prices_above_180)

print(prices_between_150_250)

print(last_three_prices)


#1st part

employee_df <- data.frame(
  Student_ID = c(101, 102, 103, 104, 105),
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Marks = c(85, 78, 90, 65, 88),
  Subject = c("Math", "Science", "Science", "English", "Math"),
  Grade = c("A", "B", "A", "C", "A"),
  Age = c(20, NA, 22, 21, 23)  
)


high_marks <- employee_df[employee_df$Marks > 80 ]

science_students <- employee_df[employee_df$Subject == "Science" ]

missing_values <- colSums(is.na(employee_df))

marks_fourth_student <- employee_df$Marks[4]

subject_grade_104 <- employee_df[employee_df$Student_ID == 104, c("Subject", "Grade")]

subset_df <- employee_df[1:3, 1:4]









employee_df$City <- c("New York", "Los Angeles", "Chicago", "Houston", "Miami")

employee_df$Age[is.na(employee_df$Age)] <- mean(employee_df$Age, na.rm = TRUE)


high_marks
science_students
missing_values
marks_fourth_student
subject_grade_104
subset_df
employee_df$City
