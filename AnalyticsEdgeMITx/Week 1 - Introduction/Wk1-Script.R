#loading data into R using change dir on windows

getwd() -- shows the directory of the loaded data

#Reading data into R

WHO = read.csv("WHO.csv")

#check the structure of the loaded data
str(WHO)

#check the summary of the data 
summary(WHO)


#Subset function is used to subset a particular observation from the entire data set. Example
WHO_Europe = subset(WHO, Region == "Europe")

#the above code implies that a subset "WHO_Europe" is culled from the dataset "WHO" which the region is exactly "Europe"


#Saves the new observation for further analysis using the ffg code
write.csv (WHO_Europe, "WHO_Europe.csv")

#to list all variables currently in use and to delete unwanted variable use
ls () --> list all variable that are currently in use
rm() --> removes all variables that are not required anymore

#Example
rm(WHO_Europe)