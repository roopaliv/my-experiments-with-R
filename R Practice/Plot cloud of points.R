#eqn plot for 100 points sampled from mean = 0 and dev = 5
x<-rnorm(100,0,5)
y<-3*x+1
means<-data.frame(x,y)
ggplot()+geom_point(data=means,aes(x=x,y=y),color="blue")

#plot the line with same eqn
x<-c(-5,25)
y<-3*x+1
line<-data.frame(x,y)
ggplot()+geom_point(data=means,aes(x=x,y=y),color="blue")+geom_line(data=line,aes(x=x,y=y))+scale_x_continuous(limits=c(-10,30))+scale_y_continuous(limits=c(-20,80))

#we generate cloud
x<-means$x
y<-sapply(x, function(x) rnorm(1,3*x+1,10 ))
cloud<-data.frame(x,y)
ggplot()+geom_point(data=means,aes(x=x,y=y),color="blue")+geom_line(data=line,aes(x=x,y=y))+scale_x_continuous(limits=c(-10,30))+scale_y_continuous(limits=c(-20,80))+geom_point(data=cloud,aes(x=x,y=y))

#In real life we have a cloud points and we have to find the line - Linear Regression

