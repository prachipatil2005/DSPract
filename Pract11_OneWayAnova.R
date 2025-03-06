#one way anova
#LOad the dataset
data1 <- read.csv("C:\Users\prachi\Downloads\One way anova.csv", sep=",", header=TRUE)
names(data1)
summary(data1)
head(data1)
anv<-aov(satindex~dept,data=data1)
#Output the anova summary
summary(anv)

