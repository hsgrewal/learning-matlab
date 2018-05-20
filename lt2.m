% Laplace Transform
syms t s;
x = 5*cos(3*t)*exp(-2*t)+(sin(3*t)*exp(-2*t))
L = laplace(x,s)
