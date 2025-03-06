#Simple linear regression
height<-c(102,117,105,141,135,115,138,144,137,100,131,119,115,121,113)
weight<-c(61,46,62,54,60,69,51,50,46,64,48,56,64,48,59)
student<-lm(weight~height)
student
prediction<-predict(student,data.frame(height=199),interval="confidence")
prediction
plot(student)

#Multiple Linear Regression
data(mtcars)
head(mtcars)
summary(mtcars)
model<-lm(mpg~wt+hp,data = mtcars)
summary(model)
new_data<-data.frame(wt=c(3,2.5),hp=c(110,150))
prediction<-predict(model,newdata=new_data)
print(prediction)
plot(prediction,col="red",pch=8,main="Predictions from the MOdel",xlab="Index",ylab="Predicted MPG")