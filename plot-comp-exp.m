% Plotting a Complex Exponential Signal
A = 3;
omega = 3*pi/2;
phi = pi/4;
T = 2*pi/omega;
t = 0:0.01:4*T
y_re = real(A*exp(j*(omega*t+phi)));
y_im = imag(A*exp(j*(omega*t+phi)));
plot(t,y_re,t,y_im,'-.')
