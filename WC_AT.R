#model<-lm(y~x,data=WC_AT.csv)
#Column names
colnames(WC_AT)
#Model building
model<-lm(AT~Waist,data=WC_AT)
summary(model)
#Preparing new data frame with new data
new_daily=data.frame(Waist=c(74.75,72.60,81.80))
#Predict for the new data
AT=predict(model,new_daily)
#Print predicted value
AT
#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(WC_AT,pred,"Error"=WC_AT$AT-pred)

