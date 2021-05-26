# Multiple Regression
#Column names
colnames(`Cars.(1)`)
#Scatter plot Matrix
pairs(`Cars.(1)`)
#Correlation Matrix
cor(`Cars.(1)`)
#Regression Model and Summary
model<-lm(MPG~HP+VOL+SP+WT,data=`Cars.(1)`)
summary(model)
reg_vol<-lm(MPG~VOL+SP+WT,data=`Cars.(1)`)
summary(reg_vol)
