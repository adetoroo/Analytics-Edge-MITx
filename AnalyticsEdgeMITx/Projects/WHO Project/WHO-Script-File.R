#load WHO data into R or RConsole

#check the summary of the loaded data set

#check the avaerage of the data set under 15
mean(WHO$Under15)

#check the standard deviation of the data set under 15
sd(WHO$Under15)

#check the country that gives 13.12% of the popultion under 15
which.min(WHO$Under15)

#use the number generated above to get the country
WHO$Country[86]

which.max(WHO$Under15)
WHO$Country[124]

-----------------------------------
#check the mean value of the 'Over60' variable
mean(WHO$Over60)

#check which country has the smallest percentage of the population over 60
which.min(WHO$Over60)

#the output of the above code gives 183. Use this number to get the corresponding country in this observation
WHO$Country[183]

#which country has the largest literacy rate
which.max(WHO$LiteracyRate)

#the output of the above code gives 44. Now check the country
WHO$Country[44]

--------------------------------------------------
#Create a subset from the data set WHO that satisfies the following conditions GNI > 10000 and Fertility Rate > 2.5. Use the following code
Outliers= subset(WHO, GNI>10000 & FertilityRate>2.5)

#check the number of rows the newly created "Outliers" data set
nrow(Outliers)

#create a vector for the new data set "Outliers" highlighting the two variables present
Outliers[c ("Country", "GNI", "FertilityRate")]

--------------------------------------------------------
#Creating plots in R
#Create basic scatter plots of GNI Vs FetilityRate
plot(WHO$GNI, WHO$FertilityRate)
plot(WHO$GNI, WHO$FertilityRate, xlab = "GNI", ylab = "Fertility Rate", main = "GNI Vs Fertility Rate")

#create an historgram of cellular subsribers in the data set WHO
hist(WHO$CellularSubscribers)


#Create a boxplot of LifeExpectancy and Region in the data set WHO
boxplot(WHO$LifeExpectancy ~ WHO$Region)

boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab = "Region", ylab = "Life Expectancy", main = "Life Exppectancy of Countries by Region")

table(WHO$Region)

#to show information about numerical variables
tapply(WHO$Over60, WHO$Region, max, na.rm = TRUE)

