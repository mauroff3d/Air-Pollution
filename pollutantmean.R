pollutantmean<-function(directory, pollutant, id=1:332){
  tab<-list.files(directory, full.name=TRUE)
  app<-c()
  for(i in id){ 
    app<-c(app, read.csv(tab[i])[,pollutant])
  }
  return(mean(app, na.rm=TRUE))
}