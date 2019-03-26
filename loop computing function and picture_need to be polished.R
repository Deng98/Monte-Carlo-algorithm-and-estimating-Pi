demand_pi=3.141	  #loop computing function (need to be polished)
deviation=pi-demand_pi
difference=1
options(digits=9)
count=1
size_dot=1
a=4
interval=1
z1=seq(0,1,1/(10^3))
f=function(x)
	sqrt(1-x^2)
g=function(x,y)
	(x^2+y^2)^(1/2)
while( difference >= deviation )
{
	x=runif(count)
	y=runif(count)
	z=seq(0,1,1/count)
	plot(x[which(y<=f(x))],y[which(x<=f(y))],xlab="X",ylab="Y",col='red',asp=1,pch=20,cex=size_dot)
	points(x[which(y>f(x))],y[which(x>f(y))],col='blue',pch=20,cex=size_dot)
	lines(z1,f(z1),col='black')
	a1=sum(g(x,y)<=1)
	a=4*a1/count
	b1=sum(y<=f(x))
	b=4*b1/count
	c1=mean(f(x))
	c=4*c1
	d1=sum((1/count )*f(z))
	d=4*d1
	difference=abs(pi-a)
  count = count + interval
}
 