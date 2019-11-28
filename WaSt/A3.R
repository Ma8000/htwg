#AB3
#A1
#a)
n = nrow(private_unfall_versicherung)
s = private_unfall_versicherung$Schaden
unique(private_unfall_versicherung$Typ)
mode(private_unfall_versicherung$Typ)


#b)
max(s)
min(s)
hist(s,sqrt(n),xlim = c(5e+4,4e+5),ylim = c(0,3000)) 
#mit sqrt(n): balken in 5k Schritten -> 900 balken
hist(s)
#ohne: balken in 500k Schritten -> 9 balken

shortS = subset(private_unfall_versicherung,Schaden>=0 & Schaden<100001)
hist(shortS$Schaden)

#c)
l = private_unfall_versicherung$log
private_unfall_versicherung['log'] = log(private_unfall_versicherung$Schaden)
hist(l,main='Log of the damage amount')

#d)
sd(s)
mad(s) #mittlere Absolute Abweichung
median(s)
mean(s)
log(median(s))
log(mean(s))
median(l)
mean(l)

#Beim Median spielt der Wert (für die Berechnung des Medians) keine Rolle -> gleich
#Beim Mittelwert werden einmal alle Schäden addiert und dann log ODER logarithmiert addiert
  #-> log(a+b)!=log(a)+log(b)

#e)
boxplot(s)
boxplot(l)

#f)
boxplot(s~private_unfall_versicherung$Typ)
boxplot(l~private_unfall_versicherung$Typ)
