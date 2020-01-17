#setting working directory
setwd("E:\\Rdata")

#checking working directory
getwd()

y <- 65
class(y)


 #storing more value in an aboject with combine operator
 riceinkg <- c(50,100)

 #checking the class
 class(riceinkg) 

 #total no. of element
 length(riceinkg)

 frooti <- c(NULL,10,20)

 length(frooti) #Only two object is showing
 
 frooti

 brand <- c(10,150,NA)
 
 length(brand) 

 is.na(brand) #checking na value

 which(is.na(brand)) #in which index the na value is
 
 brand #Na shows in the print command where Null does not

 ls() #show all the object
 
 identity <- c("ram","sham","rohit","KARAN",".",NA) #charcter with symbol also
identity

length(identity)

class(identity)

which(is.na(identity)) #finding index of NA value

sequence <- seq(10,50) #creating the sequence

sequence

class(sequence) 

negseq <- seq(-10,-50) #class is of integer case its from minus infinity to positive infinity

negseq

class(negseq)

seqq <- seq(10,50,2) #now condition applied so the class become numeric

seqq

class(seqq) #numeric

seq1 <- seq(from=100,to=150,by=0.5) #with decimal differnce

seq1 

class(seq1)

seqq2 <- seq(-10,-50,-2)
seqq2
class(seqq2)


repk <- rep(2,10) #to repeat the object
repk
 
rm(repk) #to remove Object 

ls() #to check all the object in list

rep("ram",10) #repeat string of character

letters

letseq <- seq(letters) #give index of the letter which is total no. of letter too
letseq

letters[1:10]

identity[2] <- NA

identity[1:3]

sum(is.na(identity))

identity[2] <- "sham"
 
identity [-2] #for instant variable removed

identity #But not permanent

rep(2:8,3)
