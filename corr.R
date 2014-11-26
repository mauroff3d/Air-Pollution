corr<-function(directory, threshold=0){
        app<-complete(directory)
        tab<-list.files(directory, full.name=TRUE)
        vectorid=1
        vcorr<-c()
        for(i in app$id){
                idvett=1
                sulf<-c()
                nitr<-c()
                if(app[i,"nobs"]>threshold){
                        app2<-read.csv(tab[i])
                        for (j in 1:nrow(app2)){
                                if(!is.na(app2[j,"sulfate"]) & !is.na(app2[j,"nitrate"])){
                                        sulf[idvett]<-app2[j,"sulfate"]
                                        nitr[idvett]<-app2[j,"nitrate"]
                                        idvett=idvett+1
                                }
                        }
                        vcorr[vectorid]<-cor(sulf, nitr)
                        vectorid=vectorid+1
                }
        }
        return(vcorr)
}