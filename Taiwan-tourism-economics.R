setwd("D:/Dropbox/CV_and_auto/R_Playground_on_Github/Taiwan_tourism_GDP/")

library(reshape2)
library(googleVis)
library(magrittr)

tourists <- read.csv("TK0302A1Ac.csv")
# Read the data of tourist numbers from each region each year
tourists$Asia_others <- tourists$Asia - rowSums(tourists[,3:5])
tourists <- tourists[,c(1, 11, 3:10)]

economics <- read.csv("NA8101A1Ac.csv")
# Read in economics indexes

tourist_economics <- merge(tourists, economics, by = "Year") %>%
  melt(measure.vars = 2:10, variable.name = "Regions", value.name = "Visitor_Numbers")

M <- gvisMotionChart(tourist_economics, "Regions", "Year",
                     xvar = "Visitor_Numbers",
                     yvar = "Visitor_Expenditure_Billion_NTD",
                     options = list(showChartButtons = FALSE))
plot(M)
# In R markdown, one has to set result = "asis", and use print(M) instead of plot(M). Alternatively, simply set eval = FALSE, and paste the outcome code below and do further fine tuning.