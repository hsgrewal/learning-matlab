% Laplace Transform
syms t s;
x = exp(-t);
L = laplace(x,s)

L = 1/(s+2)
x = ilaplace(L,t)
