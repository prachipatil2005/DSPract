#1
# simple pie chart
slices <- c(20, 20, 30, 30)  # values for the size
label <- c("India", "US", "Dubai", "France")  # labels for slices
# pie chart with colors and title
pie(slices, labels = label, main = "Pie chart of Countries", col = rainbow(length(slices)))


#2 Pie chart with %
slices<-c(20,20,30,30)
label<-c("INDIA","US","DUBAI","FRANCE")
pct<-round(slices/sum(slices)*100)
label<-paste(label,pct)
label<-paste(label,"%",sep="")
pie(slices,labels = label,col = rainbow(length(label)),main="Pie Chat of Countries")

#3
# Box plot
par(mar=c(4,4,2,1))
data(mtcars)
boxplot(mpg~cyl,data = mtcars,main="cars milage data",xlab="Number of cylinders",ylab = "Miles per gallon")

#4 Scatter diagram
attach(mtcars)
plot(wt,mpg,main="ScatterPlot example",xlab="Car weight",ylab="Miles per gallon",pch=19)