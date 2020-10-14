library(ISLR)
library(lsr)

dataCredit <- Credit
head(dataCredit)

#1 Mean and Median of Rating, Cards, and Age

mean(dataCredit$Rating)

mean(dataCredit$Cards)

mean(dataCredit$Age)

median(dataCredit$Rating)

median(dataCredit$Cards)

median(dataCredit$Age)

#2 Mode of Gender, Student, and Married

modeOf(dataCredit$Gender)

modeOf(dataCredit$Student)

modeOf(dataCredit$Married)

#3 Sample 10,37, and 91 Percentiles of Education
Percentile 10

quantile(x = dataCredit$Education, probs = 0.1)

Percentile 37

quantile(x = dataCredit$Education, probs = 0.37)

Percentile 91

quantile(x = dataCredit$Education, probs = 0.91)

#4 Quartiles of Balance and its corresponding boxplot

quantile(x = dataCredit$Balance, probs = c(0.25,0.50,0.75))

boxplot(x = dataCredit$Balance)

#5 Correlation and the scatter plot between pairs of Limit and Rating, Age and Card, Income and Education

newData1 <- data.frame(Limit = dataCredit$Limit, Rating = dataCredit$Rating)
newData1

cor(newData1)

plot(newData1$Limit, newData1$Rating)

newData2 <- data.frame(Age = dataCredit$Age, Card = dataCredit$Cards)
newData2

cor(newData2)

plot(newData2$Age, newData2$Card)

newData3 <- data.frame(Income = dataCredit$Income, Education = dataCredit$Education)
newData3

cor(newData3)

plot(newData3$Income, newData3$Education)

#6 Soal Probabilitas
#Sebuah dadu dilemparkan sebanyak 28 kali, tentukan probabilitas dari peristiwa muncul mata dadu 6 sebanyak 4 kali
- n = 10, p = 1/6 (Peluang tiap sisi nya adalah sama yaitu 1/6), x = 4

dbinom(x = 4, size = 28, prob = 1/6)


















































