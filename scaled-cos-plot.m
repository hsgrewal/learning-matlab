% Plot Cosine function scaled by factor of 1, 2, 3, & 4

% Set the values of X
x=0:pi/4:4*pi;

% Scale cos(x) by factor of 1 and store in a
a=cos(x);

% Scale cos(x) by factor of 2 and store in b
b=2*cos(x);

% Scale cos(x) by factor of 3 and store in c
c=3*cos(x);

% Scale cos(x) by factor of 4 and store in d
d=4*cos(x);

% Plot y & z with respect to x on the same plot
plot(x,a,x,b,x,c,x,d)

% Size axis to remove whitespace
axis([0,4*pi,-4,4])

% Add legend
legend('1*cos(x)','2*cos(x)','3*cos(x)','4*cos(x)')
