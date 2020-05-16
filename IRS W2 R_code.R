cardio_data = read.csv('CardioGoodFitness.csv')

head(cardio_data)
summary(cardio_data)

mean(cardio_data$Age)
mean(cardio_data[,2])
median(cardio_data$Age)
range(cardio_data$Age)
age_iqr = IQR(cardio_data$Age)
print(age_iqr)
Q3 = quantile(cardio_data$Age,0.75)
print(Q3)
Q3 = unname(Q3)
print(Q3)
Q1 = unname(quantile(cardio_data$Age,0.25))
print(Q1)
Q3+1.5*age_iqr
Q1-1.5*age_iqr
sum(cardio_data$Age > Q3+1.5*age_iqr)
cardio_data$Age[cardio_data$Age > Q3+1.5*age_iqr]

sd(cardio_data$Age)

mean(cardio_data$Miles[cardio_data$Gender=='Male'])
mean(cardio_data$Miles[cardio_data$Gender=='Female'])

by(cardio_data,INDICES = cardio_data$Product,FUN=summary)


hist(cardio_data$Age,col='blue',main='Histogram of Age',xlab='Age')
boxplot(cardio_data$Age,horizontal = TRUE,col='purple',xaxt="n")
axis(1, at=seq(from=18,to=50,by=2), las=2)
boxplot(Age~Gender,data=cardio_data,horizontal=TRUE,col=c('blue','red'),main='Box Plots by Gender')

par(mfrow=c(1,2))
hist(cardio_data$Miles[cardio_data$Gender=='Male'],main='Miles of Males',xlab='Miles')
hist(cardio_data$Miles[cardio_data$Gender=='Female'],main='Miles of Females',xlab='Miles')
Age
attach(cardio_data)
Age
table(Product,Gender)
table(Product,MaritalStatus)

library(rpivotTable)
rpivotTable(cardio_data)

LaTeX:X_
