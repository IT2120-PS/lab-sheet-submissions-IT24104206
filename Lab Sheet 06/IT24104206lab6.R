setwd("D:\\SLIIT\\2Y1SEM1\\PS\\LAB\\IT24104206_lab6")
#Q1
n<-50
p<-0.85
#binomial distribution(x<=47)
prob_atleast_47<- 1-pbinom(46,size=n,prob=p)
prob_atleast_47

#poison distribution
lambda<-12

#probability of exactly 15 calls
prob_15_calls<-dpois(15,lambda = lambda)
prob_15_calls
