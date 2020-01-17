#importing spss file in R

install.packages("foreign")

file.choose()

library(foreign)

datasetss <- read.spss("file location",to.data.frame = TRUE)

?unique

summary()

#sas 

install.packages("sas7bdat")
library(sas7bdat)
sasdata <- read.sas7bdat("file")

