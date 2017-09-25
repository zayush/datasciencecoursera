library(ggplot2)
library(UsingR)
data(galton)
ggplot(galton,aes(x=child, y= parent))+ geom_point()
library(reshape)
#g<-ggplot(melted,aes(x=value, fill= variable))+
#  geom_histogram(colour="Black", binwidth = 1)+
 # facet_grid(. ~variable )
library(manipulate)
x<-function(mu){
  mse = mean((galton$child-mu)^2)
h<- ggplot(galton, aes(x=child))+
  geom_histogram(binwidth = 1, colour="Red", fill="Pink") +
  geom_vline(xintercept = mu , size=3, colour="Blue") + 
  ggtitle(paste(" mu =",mu,"mse = ",mse, sep = " "))
h
}
manipulate(x(mu), mu=slider(60,75,step = 0.5))
