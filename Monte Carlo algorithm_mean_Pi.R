n=10^3       #Monte Carlo algorithm_mean_Pi
x=runif(n)
f=function(x)
sqrt(1-x^2)
h=mean(f(x))
p=4*h
p
