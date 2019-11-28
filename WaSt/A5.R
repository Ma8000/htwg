#1-(365!/(365-n)!*365^k)


x= rep(365-rep(0:19))
y=prod(x) #verschiedene tage geburtstag
z= y/365^20 #durch anzahl 20 tage aus 365 zu finden, P(verschiedene tage)
p=1-z # gegenwahrscheinlichkeit
p
