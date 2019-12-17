#1
c <-NULL
for (i in 1:1000) {
  x <- sum(runif(20))
  c <- append(c,x)
}

#a)

hist(c,freq=FALSE, breaks = 25)
m = mean(c)
v = var(c)

#b)
hist(c,freq=FALSE, breaks = 25)
lines(5:15,dnorm(5:15, mean=10, sd=sqrt(v)))

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

