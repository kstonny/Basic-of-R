# web scaping to import data from html page

install.packages("XML")
 
library(XML)

x<- readHTMLTable("http://apps.saferoutesinfo.org/legislation_funding/state_apportionment.cfm")

str(x)

class(x) #class is in list format

#convrting to dataframe to extract the element

state=as.data.frame(x[1]) #where [1] explain the list cause there is only one list

class(state) #now it is data frame 

dim(state) #row and column

head(state)

names(state)#column name 

#renmae column

colnames(state) <- c("state",paste0('Actual',2005:2012),"Total")

head(state)
