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
scoobydoo_1$trap_work_first <- replace(scoobydoo_1$trap_work_first, scoobydoo_1$trap_work_first == "NULL", NA)

colsCaught <- c("caught_fred", "caught_daphnie", "caught_velma", "caught_shaggy", "caught_scooby")
scoobydoo_1[colsCaught] <- lapply(scoobydoo_1[colsCaught], as.logical)
scoobydoo_1$caught_team <- (rowSums(scoobydoo_1[colsCaught])>0)

colsSnack <- c("snack_fred", "snack_daphnie", "snack_velma", "snack_shaggy", "snack_scooby")
scoobydoo_1[colsSnack] <- lapply(scoobydoo_1[colsSnack], as.logical)
scoobydoo_1$snack_team <- rowSums(scoobydoo_1[colsSnack])
mean(scoobydoo_1$snack_team, na.rm = TRUE)

scoobydoo_1$arrested <-as.logical(scoobydoo_1$arrested)
scoobydoo_name <- filter(scoobydoo_1, arrested & str_detect(culprit_name, "Mr") & !caught_not) # для прикладу, так як з Ghost не існує у culprit_name
scoobydoo_name <- filter(scoobydoo_1, arrested & str_detect(culprit_name, "Ghost") & !caught_not)

scoobydoo_selected <- scoobydoo_1 %>% select(series_name, culprit_name, arrested, caught_team)
View(scoobydoo_selected)
