#a)
x = (-10:10)
z = x^2
plot(x,z)
z==x^2
scatter.smooth(x,z)
help(cor)
cor(x,z)

#b)
x = 1:10
z = x^2
cor(x,z, method = c("pearson"))
cor(x,z, method = c("spearman"))

#c)

logX = log(x)
expZ = exp(z)
expZ[1.6094379]
logX
expZ
plot(logX,expZ)
plot(logX)
scatter.smooth(logX)
plot(expZ)
scatter.smooth(expZ)

scatter.smooth(logX,expZ)
cor(logX,expZ, method = c("pearson"))
cor(logX,expZ, method = c("spearman"))
 #Unterschied zwischen letzten beiden Werten sehr krass
#--> egal, was für eine Zahlenspanne man einsetzt, komische log-Skalierung oder so


##test
a = 1:11
b = a^2
logA = log(a)
expB = exp(b)
plot(logA,expB); plot(logX,expZ)


#d)
pearsonMax = 0
corV = c()
for(i in 1:1000){
  x = rnorm(5)
  y = rnorm(5)
  q = cor(x,y, method = c("pearson"))
  corV[i]=q
  if(q>pearsonMax){
    pearsonMax = q
    
  }
}
pearsonMax
hist(corV)

#e)
pearsonMax = 0
corV = c()
for(i in 1:1000){
  x = rnorm(50)
  y = rnorm(50)
  q = cor(x,y, method = c("pearson"))
  corV[i]=q
  if(q>pearsonMax){
    pearsonMax = q
  }
}
pearsonMax
hist(corV)

##Aufgabe2
library(readr)
View(rock)
str(rock)

#b)
scatter.smooth(rock$area,rock$peri)
scatter.smooth(rock$area,rock$shape)
scatter.smooth(rock$area,rock$perm)
scatter.smooth(rock$peri,rock$shape)
scatter.smooth(rock$peri,rock$perm)
scatter.smooth(rock$shape,rock$perm)

pairs(rock)





#c)
cor(rock$area,rock$peri)
cor(rock$area,rock$shape)
cor(rock$area,rock$perm)
cor(rock$peri,rock$shape)
cor(rock$peri,rock$perm)
cor(rock$shape,rock$perm)

#d)
n=48
q = (rock$area - mean(rock$area))/sd(rock$area)
r = (rock$peri - mean(rock$peri))/sd(rock$peri)
(q%*%r)/(n-1)



