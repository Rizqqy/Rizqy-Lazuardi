setwd('C:/METOPEL/File UAS') 
library('readxl')
library('tidyverse')

# Baca data
dat<-read_excel('data gdp.xlsx')

# Plot X dan Y
plot(dat$X,dat$Y,xlab="GDP",ylab="Per Capita")

# regresi
reg1<-lm(Y~X,data=dat)
summary(reg1)

# Membuat error
dat$u<-resid(reg1)

# plot eror
plot(dat$Y,dat$u,xlab="GDP",ylab="Per Capita")
