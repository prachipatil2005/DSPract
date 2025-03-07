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


##Another Multiple regression
# Load dataset
data(mtcars)

# Build multiple linear regression model
model <- lm(mpg ~ wt + hp, data = mtcars)

# Display summary
summary(model)

# New data for prediction
new_data <- data.frame(wt = c(3, 2.5), hp = c(110, 150))

# Predict values
prediction <- predict(model, newdata = new_data)

# Print predictions
print(prediction)

# Corrected plot with index
plot(1:length(prediction), prediction, col = "red", pch = 8, 
     main = "Predictions from the Model", xlab = "Index", ylab = "Predicted MPG",
     xlim = c(0, length(prediction) + 1), ylim = range(prediction))

# Add a line connecting points for better visibility
lines(1:length(prediction), prediction, col = "blue", lty = 2)
