pollutantmean<-function(directory,pollutant,id)
  {
  setwd("c:/users/aayush/documents")
  q<-list()
  o<-c()
 setwd(file.path(getwd(),directory))
 j<-1
 s<-0
 n<-0
       for(i in id)
         {
         if(i<10)
         o[j]<-paste0("0","0",as.character(i),".csv")
         else if(i<100)
          o[j]<-paste0("0",as.character(i),".csv")
         else
           o[j]<-paste0(as.character(i),".csv")
         q[[j]]<-read.csv(o[j])
         
         s<-s+sum(q[[j]][,pollutant],na.rm = TRUE)
         n<-n+sum(complete.cases(q[[j]][,pollutant]))
         j=j+1
       }
j<-1
setwd("c:/users/aayush/documents")
s/n
}