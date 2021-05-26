#model<-lm(y~x,data=NewspaperData.csv)
#Column names
colnames(NewspaperData)
#Model building
model<-lm(sunday~daily,data=NewspaperData)
summary(model)
#Preparing new data frame with new data
new_daily=data.frame(daily=c(391))
#Predict for the new data
sun1=predict(model,new_daily)
#Print predicted value
sun1
#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(NewspaperData,pred,"Error"=NewspaperData$sunday-pred)
