complete<-function(directory, id=1:332){
        tab<-list.files(directory, full.name=TRUE)
        app<-data.frame()
        compl<-data.frame(id=id, nobs=c(id))
        pos<-1
        for(i in id){
                num<-0
                app<-read.csv(tab[i]);
                for (j in 1:nrow(app)){
                      if(!is.na(app[j,"sulfate"]) & !is.na(app[j,"nitrate"])){
                              num<-num+1
                      }
                };
        compl[pos, "nobs"]<-num
        pos<-pos+1
        }
        return(compl)
}