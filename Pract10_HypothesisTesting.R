x<-rnorm(100)
#One Sample T-test
t.test(x,mu=5)

#Two sample T-Testing
x<-rnorm(100)
y<-rnorm(100)
t.test(x,y)

#Directional Hypothesis
x<-rnorm(100)
t.test(x,mu=2,alternative='greater')

#one sample μ-test
x<-rnorm(100)
wilcox.test(x,exact=FALSE)

#Two sample μ-test

x<-rnorm(100)
y<-rnorm(100)
wilcox.test(x,y)

#Correlation test
#using mtcars dataset
cor.test(mtcars$mpg,mtcars$hp)