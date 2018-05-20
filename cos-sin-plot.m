% Plot Sine & Cosine function

% Set the values of X
x=0:pi/4:4*pi;

% Evaluate sin(x) for values of x and store in y
y=sin(x);

% Evaluate cos(x) for values of x and store in z
z=cos(x);

% Plot y & z with respect to x on the same plot
plot(x,y,x,z)

% Size axis to remove whitespace
axis([0,4*pi,-1,1])

% Add legend for sin(x) and cos(x)
legend('sin(x)','cos(x)')
