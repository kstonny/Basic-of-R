#creatinglist
coffee = list(10,20,30,"abc")
coffee

#creating  a matrix one of the data structure
a=matrix(c(11,12,13,14,15,16,17,18,19),nrow = 3,ncol = 3)
a

b=matrix(c(100,200,300,400),nrow = 2,byrow = TRUE)
b

a[1,] #accessing only row (slicing)
a[,2] #access to only column

a[2,2] #acess to particular element in matrix


#list contain age name and logical value
answer <- list(name=c("ram","sham","mohit"),age=c(42,25,63),retired=c(TRUE,FALSE,TRUE))
answer

answer$age #give only age
#or
answer["age"]

answer[["age"]][1] #extract first component of age
#or
answer[[2]][1]

answer$retired
answer[[3]][2]



#lets tale a vector n create data frame 

brand <-c("orange","mango","apple")
mrp <- c(25,42,10)
color <- c("orangish","yellow","red")
volume <- c(150,100,35)

#creating data frame on given data  
juicedetail<- data.frame(brand,mrp,color,volume,stringsAsFactors = FALSE) #string as factor make sure that it should not convert string as decimal by default
juicedetail

class(juicedetail) #checking the class

save.image(file = "datastru.rda")

juicedetail<- data.frame(brand,mrp,color,volume,stringsAsFactors = TRUE) #convert charcter as factor
juicedetail
str(juicedetail)#converted char as factor as 3 char are there it converted as 1 2 3 level 

class(juicedetail)

juicedetail$brand <- as.character(juicedetail$brand) #converting factor as charc
str(juicedetail)

class(juicedetail)

juicedetail[1,]

juicedetail[1,2]
