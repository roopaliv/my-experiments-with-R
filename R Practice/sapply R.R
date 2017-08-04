#take sqrt of x
x<-c(2,4,9,15)
sqrt(x)
sapply(x,function(x) sqrt(x))

#take square
x^2
sapply(x,function(x) x^2)

#let us pick 2 numbers from normal population as mean x for each x and std dev 10
sapply(x, function(x) rnorm(2,x,10))
