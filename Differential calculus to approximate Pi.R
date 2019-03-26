n=10^3       #Differential calculus to approximate Pi  
z=seq(0,1,1/n)
f=function(x)
sqrt(1-x^2)
h=sum((1/n)*f(z))
p=4*h
p
