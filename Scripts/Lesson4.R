# Пресвята Софіє Лебеденко, допоможи ти мучениці нашій, вірній тобі до кінця, Софії.
# Ой, спаси ти її від прокляття сього коду R.
# Заряди RStudio той насущний на роботу припотужну.
# Нехай кожне запитання, що стане на його шляху, заходить і не лагає.
# Гойда 

library(dplyr)
library(tidyverse)
library(readr)
library(stringr)

text <- c(
  "risk",
  "  risk",
  "risk ",
  "  risk  ",
  "this is a risk",
  "risky",
  "RISK",
  "risk\n",
  "",
  "other",
  "safe",
  " safe ",
  "safely",
  "this is safe",
  "SAFe",
  "safety first"
)

str_detect(text, "^\\s*risk\\s*$")
str_detect(text, "^\\s*safe\\s*$")
str_detect(text, "(risk|safe)")
str_detect(text, "^risk\\b")
str_detect(text, "^\\s*$")
str_detect(text, "^\\s*(risk|safe)\\s*$")