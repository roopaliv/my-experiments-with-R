#sample - say some peices of paper with numbers 1 to 100 written on it and we pick a paper with replacement 100 times and keer track of the numbers
sample (1:10,100, replace=TRUE)

#sample from normal population
rnorm(100,50,20)

#points with x = 1 and y from normal distribution 
x<-rep(1,100)
y<-rnorm(100,50,10)
dataframe_normal_1<-data.frame(x,y)
p<-1
q<-50
dataframe_mean_1=data.frame(p,q)

#points with x = 9 and y from normal distribution 
x<-rep(9,100)
y<-rnorm(100,30,10)
dataframe_normal_9<-data.frame(x ,y)
p<-9
q<-30
dataframe_mean_9=data.frame(p,q)

#points with x = 15 and y from normal distribution 
x<-rep(15,100)
y<-rnorm(100,70,10)
dataframe_normal_15<-data.frame(x,y)
p<-15
q<-70
dataframe_mean_15=data.frame(p,q)

#plot these
ggplot()+geom_point(data=dataframe_normal_15,aes(x=x,y=y))+geom_point(data=dataframe_mean_15,aes(x=p,y=q),color="red",size=3)+geom_point(data=dataframe_normal_9,aes(x=x,y=y))+geom_point(data=dataframe_mean_9,aes(x=p,y=q),color="red",size=3)+geom_point(data=dataframe_normal_1,aes(x=x,y=y))+geom_point(data=dataframe_mean_1,aes(x=p,y=q),color="red",size=3)


#now do it using vectors in 1 go 
x_values<-c(rep(1,100), rep(9,100), rep(15,100))
x_values
y_values<-c(rnorm(100,50,10),rnorm(100,30,10),rnorm(100,70,10))
values=data.frame(x_values,y_values)
x_vectors<-c(1,9,15)
y_vectors<-c(50,30,70)
means<-data.frame(x_vectors,y_vectors)

ggplot()+geom_point(data=values,aes(x=x_values,y=y_values))+geom_point(data=means,aes(x=x_vectors,y=y_vectors),color="red",size=3)


#vertical samples at x = 1,9,15,22 on line y = 3x+1
x<-c(0,25)
y<-3*x+1
line<-data.frame(x,y) 
x<-c(1,9,15,22)
y<-3*x+1
means<-data.frame(x,y)
ggplot()+geom_line(data=line,aes(x=x,y=y))+geom_point(data=means,aes(x=x,y=y),color="red",size=3)

#now get samples
x->c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
y<-c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))
frame<-data.frame(x,y)
ggplot()+geom_line(data=line,aes(x=x,y=y))+geom_point(data=means,aes(x=x,y=y),color="red",size=3)+geom_point(data=frame,aes(x=x,y=y))+scale_x_continuous(limits=c(0,30), breaks=seq(0,30,1))+scale_y_continuous(limits=c(0,100), breaks=seq(0,100,1))