# PrakashR,Iyer - 26 Jun 2017
#Manoj - Test
# Titanic: Getting Started With R - Part 1: Booting up in R


# Set working directory and import datafiles
setwd("~/Kaggle/Titanic")
train <- read.csv("train.csv")
test <- read.csv("test.csv")

# Examine structure of dataframe
str(train)

# Look at number of people who survived
table(train$Survived)
prop.table(table(train$Survived))

# Create new column in test set with our prediction that everyone dies
test$Survived <- rep(0, 418)

# Create submission dataframe and output to file
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "theyallperish.csv", row.names = FALSE)

