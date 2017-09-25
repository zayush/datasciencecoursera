n<-200
pval<-seq(0.1,0.9,0.05)
nosim<-1000
c<-sapply(pval,function(p){
  a<-(rbinom(n=nosim,prob = p, size = n))/(n)
  ul<-a +qnorm(0.975)*sqrt(a*(1-a)/n)
  ll<-a - qnorm(0.975)*sqrt(a*(1-a)/n)
  mean(ll<p & ul>p)
})
plot(x=pval,y=c,type="l",ylim = c(0.93,0.97), xlab = "Actual Probibility Value", ylab = "prbability falling into 95% interval")

abline(h=0.95,col="Red")
