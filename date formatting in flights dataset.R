# lets do some analysis on data conatining date
getwd()
rm(list=ls())
flightsdata <- read.csv("FLIGHTS.csv")

# checking the overall structure of my dataset
str(flightsdata)

library(dplyr)
# we can convert a character string into a date format by using
# as.date command
# we can convert into date column inm which R recognises it a date only


# flight date is a column contains a date, an abbreviated month and a year
#flightsdata$fd <- as.date(flightsdata$fd,"%d-%b-%y")
flightsdata$FlightDate <- as.Date(flightsdata$FlightDate,"%d-%b-%y")

str(flightsdata)


# we use date class t0 convert a character into a date
# %Y IS FOR YEAR HAVING 4 DIGITS'
# %y is for year having 2 digits
# %B FOR MONTHS WITH FULL NAME
# %b for abbreviated month name
# %d day of month 

# for example 11/jan/08 then %d/%b/%y
# for example 12-feburary-2012 then %d-%B-%Y

 #how we can extract months in a week days from a  data
head(months(flightsdata$FlightDate))
unique(months(flightsdata$FlightDate))


head(weekdays(flightsdata$FlightDate))
unique(weekdays(flightsdata$FlightDate))


# finding diffrence between two date values by simply subtracting those values
flightsdata$FlightDate[60]-flightsdata$FlightDate[900]

# diffrence between two dates with different units
difftime(flightsdata$FlightDate[3000],flightsdata$FlightDate[90],units ="weeks")
#?difftime
difftime(flightsdata$FlightDate[3000],flightsdata$FlightDate[90],units ="days")

difftime(flightsdata$FlightDate[3000],flightsdata$FlightDate[90],units ="hours")


# how to use date information to manupulate the data
# if we want to subset the data for all saturdays

# all rows when the day is saturday

library(dplyr)
dim(flightsdata)

flightsdata_saturday <- flightsdata%>%filter(weekdays(FlightDate)=="Saturday")


# if you wamt to subset data on city atlanta and sunday, we can again do it using pipe opeartor

# finding the number of flights on saturdays for the destination  atlanta
object1 <- flightsdata%>%filter(weekdays(FlightDate)=="Sunday", DestCityName=="Atlanta, GA")%>%nrow()
object1

#if a data has time information also along with the date
# R uses POSIXct and POSIXlt classes to deal with dates.

date1 <- Sys.time() # to save the system time in an object date 1
date1
# all the functions that work with regular date classes also work with dates 
# belonging to POSIXct and POSIXlt classes
class(date1)

weekdays(date1)

months(date1)

# although POSIXct is similar to POSIXlt class but it stores the dates object as
# list and allows the user to extract different components such as weekdays, months
# timezones very easily.

# whenever data   has time infromation along the date , we use POSIXct and POSXlt
# to deal with dates 

date2 <- as.POSIXlt(date1)
date2
str(date2)

date2$wday

date2$zone

date2$hour


