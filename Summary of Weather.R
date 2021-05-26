#model<-lm(y~x,data=Summary.of.Weather.csv)
#Column names
colnames(Summary.of.Weather)
#Model building
model<-lm(MinTemp~MaxTemp,data=Summary.of.Weather)
summary(model)
#Preparing new data frame with new data
new_daily=data.frame(MaxTemp=c(25.55,28.88,26.11))
#Predict for the new data
MinTemp=predict(model,new_daily)
#Print predicted value
MinTemp
#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(Summary.of.Weather,pred,"Error"=Summary.of.Weather$MinTemp-pred)
