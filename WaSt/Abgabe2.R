#Aufgabe 1

table(Churn$Churn)

barplot(table(Churn$Churn))

#b)

table(Churn$CustServCalls)

barplot(table(Churn$CustServCalls))

#c)

a = table(Churn$Churn, Churn$CustServCalls)

a[1,2:10]

boxplot(Churn$CustServCalls~Churn$Churn)

#d)

barplot(a)


#Aufgabe 2

var = c(125,60,24, 24 , 15, 15,15,12,rep(10,7))

median(var)

getmode = function(v){
  uniqv = unique(v) #without duplicates
  uniqv[ #returns the value of 'uniqv' on that pos
    which.max( #returns the location of the maximum
      tabulate( #returns the amount the numbers occurs
        match(v, uniqv) #returns the pos where the elements in 'v' occurs in 'uniqv'
        )
      )
    ]
}

getmode(var)

mean(var)

median(var)

#Aufgabe 3

nrow(Arrivals)

ncol(Arrivals)

#b)

mode(Arrivals$Flugnummer)
mode(Arrivals$Transferpassagiere)
mode(Arrivals$Herkunft)

#c)

table(Arrivals$Landebahn)

#d)
barplot(table(Arrivals$Landebahn))

#e)
hist(Arrivals$Verspaetung)
table(Arrivals$Verspaetung)


#f)
mean(Arrivals$Verspaetung)
median(Arrivals$Verspaetung) #ist besser

#g)
quantile(Arrivals$Verspaetung)
