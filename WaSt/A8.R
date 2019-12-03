plot(0:300,dpois(0:300,100),type = 'h')
ppois(350,100,lower.tail = FALSE)

secs = rpois(84600, lambda= 100/84600)
ssec = secs[1:7200]
plot(0:7199,ssec,type = 'h')
sum(secs)

#c
secs
m = which(secs==1)
diff(m)
hist(diff(m))

