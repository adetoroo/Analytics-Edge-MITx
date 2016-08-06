#MoneyBall - Baseball project

#This project is to predict the number of wins of a baseball team within a session with the sole aim of qualifing for the playoff.

#By Oluwaseyi Adetoro

#Note that Moneyball concept focus of this and it specifically focus on data available from year 2002 above. Based on this, all analysis is based.

#load in data and read as usual
------------------------------------

Moneyball = subset(baseball, Year<2002)

summary(Moneyball)

str(Moneyball)

#build a linear regression model to predict the number of wins based on the difference between the runs allowed and runs scored throughout the session.

Moneyball$RD = Moneyball$RS - Moneyball$RA

summary(Moneyball$RD)

str(Moneyball$RD)

plot(Moneyball$RD)

baseball$RD = as.numeric(baseball$RS - baseball$RA)

str(baseball)

winsreg = lm( W ~ RD, data= Moneyball)

winsreg_2 = lm(W ~ RS + RA, data= Moneyball)

summary(winsreg_2)

#Now use linear regression to predict the runs scored using three hitting statistics, OBP, SLP & BA

RunsReg = lm(RS ~ OBP + SLG + BA, data= Moneyball)

summary(RunsReg)

RunsReg1 = lm(RS ~ OBP + SLG, data= Moneyball)

summary(RunsReg1)