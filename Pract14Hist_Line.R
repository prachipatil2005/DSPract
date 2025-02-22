#1Histogram
data(mtcars)
hist(mtcars$mpg,breaks = 20,col="blue",main="Histogram of miles per Gallon",
     xlab="Miles per gallon",ylab="frequency")

#2 Line plot
par(mfrow=c(2,4))
opts<-c("p","l","b","o","h","s","n")
x<-1:3
y<-(1:3)^2
for(i in 1:length(opts)){
  heading<-paste("type=",opts[i])
  plot(x,y,type="n",main=heading,xlab="X-axis",ylab="Y-axis")
  lines(x,y,type=opts[i],col="darkblue",pch=22)
}