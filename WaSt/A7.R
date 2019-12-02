nascent <- 5656
ndeaths <- 223
Pdie <- ndeaths/nascent
Pdie

#b
Psurvive <- 1-Pdie
Psurvive
Psurvive **21

#c
ngroup <- 18
dbinom(0,ngroup,Pdie)
dbinom(5,ngroup,Pdie)

{
  pbinom(15,ngroup,Psurvive)
  sum(dbinom(3:18,ngroup,Pdie))
  1-pbinom(2,ngroup,Pdie)
  pbinom(2,ngroup,Pdie,lower=FALSE)
}
dbinom(2,ngroup,Pdie)
  
#d
#keine unabhängingkeit von todesopfern

#2
naccidents <- 4.21
n2008 <- 7
ppois(n2008-1,lambda=naccidents,lower=FALSE)

#b
ppois(8,lambda = naccidents,lower=FALSE)
qpois(0.95,lambda = naccidents)

#c
#evtl. 7
avg = naccidents*3
0.95^3
qpois(0.95^3,naccidents)
