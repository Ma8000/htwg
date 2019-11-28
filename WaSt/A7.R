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
}
dbinom(2,ngroup,Pdie)
  
#d
#keine unabhängingkeit von todesopfern

#2
naccidents <- 4.21
n2008 <- 7
ppois(n2008-1,lambda=naccidents,lower=FALSE)

#b
ppois(9,lambda = naccidents,lower=FALSE)

#c
#evtl. 7
