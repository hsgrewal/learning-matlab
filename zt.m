% z-Transform
syms n z;
f = 5^n;
X = ztrans(f,z)

% Inverse
X = 1/(z+1)
f = iztrans(X,n)
