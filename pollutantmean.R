pollutantmean<-function(directory, pollutant, id=1:332){
  tab<-list.files(directory, full.name=TRUE)
  app<-data.frame()
  for(i in id){
    app<-rbind(app, read.csv(tab[i]))    
  }
  return(mean(app[,pollutant], na.rm=TRUE))
}