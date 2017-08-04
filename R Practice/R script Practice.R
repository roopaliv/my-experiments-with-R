#plot points
x<-c(1,4,1)
y<-c(6,4,9)
dat<-data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="forestgreen",shape=21)+scale_x_continuous(limits=c(0,15), breaks=seq(0,15,1))+scale_y_continuous(limits=c(0,15), breaks=seq(0,15,1))
 
#plot lines
p<-c(1,8)
q<-c(3,10)
linedat<-data.frame(p,q)
ggplot()+geom_line(data=linedat,aes(x=p,y=q))

#change data
dat$x<-c(2,4, 2)

#plot line equations
m<-c(0,10)
n<-(-.3)*m+1
lineeqdat<-data.frame(m,n)
ggplot()+geom_line(data=lineeqdat,aes(x=m,y=n),color="cadetblue1")

