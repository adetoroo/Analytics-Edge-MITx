#Linear Regression by Oluwaseyi Adetoro
#Predictiing the quality of wine
 
#error = actual value - predicted value

#sum of squared residuals or errors, SSE

#SSE = (Residuals errors^2)

#Root means squared errors, RMSE
#RMSE = sqrt(SSE/nrow(dataset))

#R - Squared - another error measure: It compares the baseline model and the best model i.e

#R-Squared = 1 - SSE/SST

# baseline prediction is the average value of the dependent variable

#Total sum of squares, SST = (actual value - baseline values)

--------------------------------------------
#Linear Regression Modelling in R

# Predciting the quality of Wine in R

#Import the data set from c drive and check the structure and the summary of the data set

#now create one variable linear regression equation to predict the price of the wine using AGST alone as the variable

model_1 = lm(Price ~ AGST, data=wine)

summary(model_1)

#compute sum of squared errors

model_1$residuals

SSE = sum(model_1$residuals^2)

SSE

#adding other variables to the regression model to check how they affect the squared R of the model

names(wine)

model_2 = lm(Price ~ AGST + HarvestRain, data=wine)
summary(model_2)

#compute the third model to include all variables

model_3 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop, data=wine)

summary(model_3)

#Adjusted R-squared will decrease if the variable that does not help the model is added to the linear regression. Multiple R will always increase if more variables (independent) are added to the model.

# standard errors gives measures of how much the coefficient is likely to vary from the estimated value 

# t-value- this is the estimate value divided by the standard error

#t-value = estimate error/standard error

#the larger the absolute value if the t-value, the more likely the coefficient is to be significant.

#correlation measures the linear relationship between the variables

model_4 = lm(Price ~ AGST + HarvestRain + WinterRain + Age, data=wine)
summary(model_4)

--------------------------------------------------

#the data used in building the model is called the training data while the new data on which the trained data is tested is called "test data"

#the accuracy of the model on the test data is called "Out of Sample Accuracy"

#import the test data on which the trained data will be tested

#check the summary and the structure respectively

#predicting the new price on the test data using the trained data

PredictTest = predict(model_4, newdata = winetest)

#to check the predicted prices of the wine use the code below
table(PredictTest)

SSE = sum((winetest$Price - PredictTest)^2)

SSE

SST = sum((winetest$Price - mean(wine$Price))^2)

SST
-------------------------------------