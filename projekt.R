install.packages("readxl")

library(readxl)
data <- read_excel("baza.xlsx")
View(data)

acf(data,lag.max = 100)

pacf(data,lag.max = 100)
