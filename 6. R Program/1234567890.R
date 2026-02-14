# Load Required Libraries
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")


library(dplyr)
library(tidyr)
library(ggplot2)


df <- CO2
view(CO2)

# Q1.  Calculate average uptake per plant and treatment
uptake_avg <- co2 %>%
  group_by(plant, treatment)%>%
  summarise(avg_uptake = mean(uptake), .groups = "drop")

#Q2. Spread treatment into separate column
uptake_spread <- co2 %>%
  spread(key = treatment, values = avg_uptake)
print(uptake_spread)

#Separate() activity
#artificial column with region info

region <- sample(c("North", "South"), nrow(USArrest), replace = TRUE)

usarrest_sep <- usarrest %>% 
  tibble::rownames_to_column("state") %>%
  mutate(State_Info, into = c("StateName", "Region"),sep = '-')
head(usarrest_sep2)


## 4. unite( )Activity

# Q1.