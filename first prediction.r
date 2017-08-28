for(i in seq)
  {
  #take the data file as input
data<-read.csv("data.csv")
#divide the data into testing and training
paste("Give % divide share of training data eg. 65 out of 100")
#p<-readline()
#p<-as.numeric(p)
p<-i
a<-sample(1:nrow(data),p *nrow(data)/100)
#divide
training<-data[a,]
testing<-data[-a,]
#build model based on decision tree
model<-ctree(claim ~ age_bracket +bmi + gender + previous_claim, data = training)
pred<-predict(model,newdata=testing)
#efficiency

CM<-confusionMatrix(pred, testing$claim)
total<-c(total,CM$overall["Accuracy"])
}
avg<-mean(total)
std<-sd(total)
max<-max(total)
paste(average=avg , standarddev=std, maximum = max)