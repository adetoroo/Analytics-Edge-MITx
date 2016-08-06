#check all foods which that has Sodium content
USDA$Sodium

#check food with highest Sodium content
which.max(USDA$Sodium)

#Use the number generated in the above code to compute the food with the highest Sodium content
USDA$Description[265]

#Create an entry for high sodium food 
HighSodium = subset(USDA, Sodium > 10000

nrow(HighSodium)


HighSodium$Description

match("CAVIAR", USDA$Description)
USDA$Sodium[4154]

summary(USDA$Sodium)

sd(USDA$Sodium)

sd(USDA$Sodium, na.rm=T)


----------------------------------
#create plot of Protein and Total Fat
plot(USDA$Protein, USDA$Total, xlab = "Protein", ylab = "Total Fat", main = "Protein Vs Fat", col = "Blue")

hist(USDA$VitaminC, xlab = "Vitamin C", main = "Histogram of Vitamin C Levels", xlim = c(0, 100), breaks = 100)

#boxplot and hist only takes as an input a single vector

---------------------------------
#adding variables to data set
#Suppose we want to add a variable to our USDA data set that takes a value "1" if the food has higher sodium than average, and "0" if the food has lower sodium than average. The ffg code beloow could be used.

USDA$Sodium [1] > mean (USDA$Sodium, na.rm = T)

HighSodium = USDA$Sodium > mean(USDA$Sodium, na.rm= T)
summary(HighSodium)
str(HighSodium)

#the ffg code will add the new variable to the data set

USDA$HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rm = T))

#the same can be done for carbonhydrate, fat and other food.

names(USDA)

summary(USDA$Carbonhydrate, na.rm=T)
str(USDA$Carbonhydrate)
str(USDA$Carbohydrate)

USDA$HighCarb = as.numeric(USDA$Carbohydrate > mean(USDA$Carbohydrate, na.rm = TRUE))
str(USDA)

USDA$HighProtein = as.numeric(USDA$Protein > mean(USDA$Protein, na.rm = TRUE))

USDA$HighFat = as.numeric(USDA$TotalFat > mean(USDA$TotalFat, na.rm = TRUE))

str(USDA)

# to figure out foods have high Sodium level than average, we look at the "HighSodim" variable and count the foods that have values "1". This process can be done using "tapply function"

table(USDA$HighSodium)

table(USDA$HighSodium, USDA$HighFat)

tapply(USDA$Iron, USDA$HighProtein, max, na.rm = T)


