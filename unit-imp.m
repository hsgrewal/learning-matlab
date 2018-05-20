% Unit Impulse (Discrete-Time) d[n]
n1 = -3;
n2 = 3;
n = n1:n2;
d = (n==0);
stem(n,d)
