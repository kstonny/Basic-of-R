rm(list = ls())
setwd("E:\\Rdata")
getwd() 

#Exploring the dataset in R

library(datasets) #masterdata

data() #checking all data in 

iris #taking iris dataset OR

data("iris")

#mydata <- iris # object oriented

?iris #description of dataset

row(iris) 

str(iris) #structure command to explain ol detail about dataset we have four continous n one catagorical variable

nrow(iris) #checking no. of rows

colnames(iris) #name of columns
#or
names(iris)

ncol(iris) #no. of columns

head(iris,10) # to see the pattern 

tail(iris,n=8)

iris[89:140,]

#checkin class of dataset
class(iris)

ls()

#head of species
head(iris$Species)

head(Species) #will give error

attach(iris) #will give assess in iris permanently

head(Species) #no more use of dollar sign

#detaching 

detach(iris)

head(Species) #data is detached 

summary(iris) #for entire detail of data 


