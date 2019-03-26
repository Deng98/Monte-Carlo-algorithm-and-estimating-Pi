n=10^3       #Monte Carlo algorithm_random dot_Pi(2)
x=runif(n)
y=runif(n)
f=function(x)
sqrt(1-x^2)
h=sum(y<=f(x))
p=4*h/n
p
