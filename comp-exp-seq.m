% Complex Exponential Sequence
n = -5:5;
w = 2*pi;
x = exp(j*w*n);
stem(n,real(x))
stem(n,imag(x))
stem(n,abs(x))
stem(n,angle(x))
