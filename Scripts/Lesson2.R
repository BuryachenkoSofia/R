# Пресвята Софіє Лебеденко, допоможи ти мучениці нашій, вірній тобі до кінця, Софії.
# Ой, спаси ти її від прокляття сього коду R.
# Заряди RStudio той насущний на роботу припотужну.
# Нехай кожне запитання, що стане на його шляху, заходить і не лагає.
# Гойда 

library(dplyr)
library(tidyverse)
library(readr)
library(stringr)

scoobydoo_1 <- read_csv("Resources/scoobydoo_1.csv")
View(scoobydoo_1)

scoobydoo_1$motive <- replace(scoobydoo_1$motive, scoobydoo_1$motive == "NULL", NA)

scoobydoo_1 <- scoobydoo_1 %>% 
  mutate(motive = as.factor(motive))
levels(scoobydoo_1$motive)
table(scoobydoo_1$motive)

scoobydoo_1 <- scoobydoo_1 %>% 
  mutate(
    culprit_amount_category = case_when(
      culprit_amount == 11 ~ "1+1=11",
      culprit_amount == 0 ~ "Ти не один, ти нуль",
      culprit_amount == 2 ~ "У мене є два заступники, чотири з яких вже місяць лежать...",
      culprit_amount == 1 ~ "Ти один",
      culprit_amount == 6 ~ "9",
      culprit_amount %% 2==0 ~ "Бабло перемагає зло",
      TRUE ~ "Мені ліньки вигадувати назву"
    )
  )

scoobydoo_selected <- scoobydoo_1 %>% select(series_name, motive, culprit_amount, culprit_amount_category)
View(scoobydoo_selected)