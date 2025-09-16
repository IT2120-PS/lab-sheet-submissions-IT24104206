setwd("D:\\SLIIT\\2Y1SEM1\\PS\\LAB\\IT24104206")

#Question 01
#Uniform distribution
(25 - 10) / 40

#Question 02
#Exponential distribution
lambda <- 1/3
pexp(2, rate = lambda, lower.tail = TRUE)

#Question 03
#Normal distribution

#Part 01
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

#Part 02
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
