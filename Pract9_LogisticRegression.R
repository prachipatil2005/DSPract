#Load Mtcars
View(mtcars)
model1<-glm(formula=vs~mpg,data=mtcars,family = "binomial")
summary(model1)
predict(model1,data.frame(mpg=20),type="response")
predict(model1,data.frame(mpg=c(20:30)),type = "response")

#logistic regresson based on 'hp'
model2<-glm(formula=vs~hp,data = mtcars,family = "binomial")
summary(model2)

predict(model2,data.frame(hp=150),type="response")
predict(model2,data.frame(hp=c(150,100,50)),type="response")

#third logistic regressoin with hp and mpg
model3<-glm(formula = vs~hp+mpg,data=mtcars,family = "binomial")
summary(model3) 

#Display AIC of models
AIC(model1)
AIC(model2)
AIC(model3)