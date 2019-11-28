pZbTb = 0.8 
PTb = 0.15
pZb = 0.15*0.8+0.85*0.2 #taxi war blau und zeuge sagt blau und/+ Taxi war grün und er sagt es falsch
pZbTb*PTb/pZb


#2
factorial(8)

#Gruppen Erster:    Paris, Schalke, Malaga  (Es) , Dortmund, Juve       , Bayern  , Barcelona  , Manu (England)
#Gruppen Zweiter:   Porto, Arsenal, AC Mailan    , Real Mad, Schachta D., Valencia, Celtic Glas (Schottland), Galat Is
#Codierung  FR=1, DE=2, ES=3, IT=4, England=5, Portugal=6, Ukreine=7, Türkei=8, Schottland=9
LandGruppenErster  <-c(1, 2, 3, 2, 4, 2, 3, 5)
LandGruppenZweiter <-c(6, 5, 4, 3, 7, 3, 9, 8)

counter = 0

for(i in 1:100000){
  indexErster = sample(1:length(LandGruppenErster))
  indexZweiter = sample(1:length(LandGruppenErster))
  intcounter = 0
  for(j in 1:length(LandGruppenErster)){
   if(indexErster[j]!=indexZweiter[j]){
     if(LandGruppenErster[indexErster[j]]!=LandGruppenZweiter[indexZweiter[j]]){
        intcounter = intcounter +1
      }
   }
    if(intcounter==length(LandGruppenErster)){
      counter = counter + 1
    }
  }
}

counter

factorial(8)*0.13125

#b)

counter = 0

for(i in 1:100000){
  indexErster = sample(1:length(LandGruppenErster))
  indexZweiter = sample(1:length(LandGruppenErster))
  intcounter = 0
  for(j in 1:length(LandGruppenErster)){
    if(indexErster[j]!=indexZweiter[j]){
      intcounter = intcounter +1
    }
    if(intcounter==length(LandGruppenErster)){
      counter = counter + 1
    }
  }
}
counter
factorial(8)*0.368006
