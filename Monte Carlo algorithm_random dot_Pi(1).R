n=10^3       #Monte Carlo algorithm_random dot_Pi(1)
x=runif(n)
y=runif(n)
g=function(x,y)
sqrt(x^2+y^2)
h=sum(g(x,y)<=1)
p=4*h/n
p
