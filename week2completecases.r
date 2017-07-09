#complete cases
complete<-function(directory,id)
  {
  setwd("c:/users/aayush/documents")
  result<-data.frame(id=0,nobs=0)
  #names(result)<-c("id","complete cases")
  setwd(file.path(getwd(),directory))
  for(i in id)
  {
    if(i<10)
    naam<-paste("0","0",as.character(i),".csv",sep="")
    else if(i<100)
      naam<-paste("0",as.character(i),".csv",sep="")
    else
      naam<-paste(as.character(i),".csv",sep="")
    result<-rbind(result,c(i,sum(complete.cases(read.csv(naam)))))
  }
  result<-result[-1,]
  row.names(result)<-1:nrow(result)
  result
}