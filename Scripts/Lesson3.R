# Пресвята Софіє Лебеденко, допоможи ти мучениці нашій, вірній тобі до кінця, Софії.
# Ой, спаси ти її від прокляття сього коду R.
# Заряди RStudio той насущний на роботу припотужну.
# Нехай кожне запитання, що стане на його шляху, заходить і не лагає.
# Гойда 

library(dplyr)
library(tidyverse)
library(readr)
library(stringr)

patient_risk_profiles <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2023/2023-10-24/patient_risk_profiles.csv')
View(patient_risk_profiles)

ageGroups <- c("age group:  10 -  14", "age group:  15 -  19")
patient_risk_profiles[ageGroups] <- lapply(patient_risk_profiles[ageGroups], as.logical)

for(i in names(patient_risk_profiles)){
  if(str_detect(i, "age")){
    print(i)
  }
}