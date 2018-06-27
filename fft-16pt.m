% N-point FFT
N = 16;

% Declare vector for n
n = 0:N-1;

% Store values of x1[n]
x1 = [0 1 2 1 0 -1 -2 -1 0 2 3 5 8 4 2 1];

% Compute the FFT of x1[n] and store it in X1[k]
X1 = fft(x1,N);

% Plot magnitude of X1[k] with respect to k
stem (n,abs(X1));
legend ('16-Point FFT')
xlabel('k');
ylabel('Magnitude of X_1[k]');


% Store values of x2[n]
x2 = [0 1 2 1 0 -1 -2 -1];

% Compute the FFT of x2[n] and store it in X2[k]
X2 = fft(x2,N);

% Plot magnitude of X2[k] with respect to k
figure(2);
stem (n,abs(X2));
legend ('16-Point FFT')
xlabel('k');
ylabel('Magnitude of X_2[k]');


% Store values of x3[n]
x3 = [0 0 0 0 0 0 0 0 0 2 3 5 8 4 2 1];

% Compute the FFT of x3[n] and store it in X3[k]
X3 = fft(x3,N);

% Plot magnitude of X3[k] with respect to k
figure(3);
stem (n,abs(X3));
legend ('16-Point FFT')
xlabel('k');
ylabel('Magnitude of X_3[k]');
