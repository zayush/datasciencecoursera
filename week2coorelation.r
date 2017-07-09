#coorelation
corr<-function(directory,thresold=0)
{
  o<-c()
  setwd("c:/users/aayush/documents")
  setwd(file.path(getwd(),directory))
  id= list.files()
  for(i in id)
  { y<-read.csv(i)
    x<-y[complete.cases(y),]
    
    if(sum(complete.cases(y))>thresold)
     o<-c(o,cor(x$nitrate,x$sulfate))
  }
  o
}