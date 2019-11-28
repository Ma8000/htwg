#Aufgabe 1

x <-c(5,2,1,4)
y <-rep(1,5)
nam=c("Hans","Axel","Steph")

x ; y ;
str(x)
class(nam)
c(x,y,13)
sum(x)

range(x)
length(x)
mean(x)

sum(x)
max(x)
min(x)


nam=="Axel"
nam[3]="Stef"
length(nam)

x[2]
x[4]*y[2]
x[2:4]+1

x<=2
x[x<=2]
x[c(TRUE,FALSE,TRUE,TRUE)]

sum(x>1)


#Aufgabe 2

#a

my.vec=c(3,-2,5,0)

v2 = my.vec[1:2]

my.vec = c(my.vec,10:20)
my.vec[my.vec<5]


rep(1:4,2)
rep(c("ja","nein"), each = 2)
?rep;

rep(letters[1:4], c(2,1,2,1))


seq(from=2,to=5,by=0.5)
seq(from=2,to=5,length.out = 30)*c(-1,1)

rep(1:5,3)
rep(seq(1,5),3)



#Aufgabe 3


sum(is.na(Churn))

nrow(Churn)
sum(Churn$Churn)
sum(Churn$Churn) / nrow(Churn) * 100


a = Churn$CustServCalls>=5
newdf = Churn[a,]

median(Churn$AccountLength)
shortCus = Churn[Churn$AccountLength<101,]
longCus = Churn[Churn$AccountLength>=101,]
sum(shortCus$Churn); sum(longCus$Churn)
sum(shortCus$Churn) / nrow(shortCus) * 100
sum(longCus$Churn) / nrow(longCus) * 100