install.packages("dplyr")
library(dplyr)

#we will use the built in iris dataset'
df <- iris
view(iris)
head(df)#view 1st 6 rows
#Select() - choose column
df_selected <- df %>%select(Sepal.length, Species)
head(df_selected)

#Select columns that starts with "sep"
iris%>% select(starts_with("Sep"))

#Select columns that ends with length
iris %>% select(ends_with("Length"))

#Selects columns that contain "al"
iris%>% select(contains("al"))

#Selects column with repeated character (eg. "ee" in column names)
iris%>% select(matches("(.)\\1"))
               
#Select numeric columns with name like "petals1" "petals2", etc (if they existed)
iris%>% select(num_range("petal",1:3))

#filters() filter Rows
df_filtered <- df %>% filter(Species == "setosa")
head(df_filtered)


df <- data.frame(Id = 1:5 , score = c(50,75,90,65,80))

#filter rows where score is greater than 70
df_filtered <- df %>% filter(score>70)

#filter rows where score is between 60 and 80
df_filtered <- df %>% filtered(score>= 60 & score<=80)
print(df_filtered)

#filter rows where score is 















install.packages(c("tidyverse","lubridate","readx1","broom","survival","rmarkdown","shiny","tidyselect"))
library(readr)
library(tidyverse)
circ= read_csv("C:/Users/sudha/Downloads/Charm_City_Circulator_Ridership.csv")
head(circ, 2)

class(circ$date)
library(lubridate)
sum(is.na(circ$date))









