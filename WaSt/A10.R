#1
c <-NULL
n=20
for (i in 1:1000) {
  x <- sum(runif(n))
  c <- append(c,x)
}
c
#a)

hist(c,freq=FALSE, breaks = 25)
m = mean(c)
v = var(c)
m;v

E(x) = n*0.5 #nach ZGWS
Var(unif) = 1/12*(1-0)^2
Var(c) = Var(unif)*n
varThe=(1/12*(1-0)^2)*n


#b)
hist(c,freq=FALSE, breaks = 25)
lines(seq(0,25,0.1),dnorm(seq(0,25,0.1), mean=10, sd=sqrt(varThe)))

#c)

library(car)
qqPlot(c)

#d)
plot(-6:6,dt((-6:6),df=1),type='l')

#e
c <-NULL
for (i in 1:1000) {
  x <- sum(rt(n=20,df=1))
  c <- append(c,x)
}
hist(c,freq=FALSE, breaks = 50)
mean(c)

#immer um null herum

#2
vs1 = NULL
vs2 = NULL
for(i in 1:1000){
  n=30
  a = rnorm(n)
  s1 =1/(n-1)*sum(a)^2
  s2= 1/n*sum(a)^2
  vs1 = append(vs1,s1)
  vs2 = append(vs2,s2)
}
hist(vs1)
hist(vs2)

mean(vs1);mean(vs2)
