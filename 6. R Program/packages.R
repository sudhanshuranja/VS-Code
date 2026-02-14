install.packages("tidyverse")          # Install the package (only once)

library(tidyverse)                     # Load the package

library(tidyr)

df <- data.frame(ID = c(1, 2,3,4,NA), Math = c(80, 75,89,NA,67), 
                 Science = c(85, 78,NA,NA,89),
                 English = c(90, 82,67,50,NA))

View(df)

df_long <- df %>%
  pivot_longer(cols = Math:English, names_to = "Subject", 
               values_to = "Score")

View(df_long)

#Convert Long Data to Wide Format
df_wide <- df_long %>%
  pivot_wider(names_from = Subject, values_from = Score)

View(df_wide)

# Handling Missing Values

#drop_na() → Remove Missing Values


df_clean <- df %>% drop_na()  # Removes rows with missing values
View(df_clean)
#replace_na() → Replace Missing Values

df_filled <- df %>% replace_na(list(Math = 00, Science = 00))
View(df_filled)
#separate() → Split a Column into Multiple Columns
df <- data.frame(Name = c("rohan_kumar", "Jan_kumar"))
View(df)
df_separated <- df %>% separate(Name, into = c("First", "Last"), sep = "_")

#unite() → Merge Multiple Columns into One
df_united <- df_separated %>% unite("Full_Name", First, Last, sep = " ")




