set.seed(1)
fr<-10
o<-rnorm(10000)
a<-data.frame(norm=o,dn=dnorm(o) ,dent=dt(o,fr))
library(ggplot2)
ggplot(data = a) + 
 #geom_histogram(binwidth = 0.1, colour="Black", aes(y=..density..,fill=norm,x=norm)) +
  geom_smooth(aes(y=dn,x=norm),ylim= c(0,0.5), colour="Red") + geom_vline(aes(xintercept=qnorm(0.975)))+
#geom_histogram(binwidth = 0.1, colour="Red", aes(y=..density..,fill=norm,x=norm)) +
  geom_smooth(aes(y=dent,x=norm),ylim= c(0,0.5), colour="Green") +
  geom_vline(aes(xintercept=qt(0.975,df=fr)))

