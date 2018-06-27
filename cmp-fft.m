% N-point FFT
N = 16;

% Declare vector for n
n = 0:N-1;

% Store values of p1[n]
p1 = [0 1 2 1 0 -1 -2 -1 0 1 2 1 0 -1 -2 -1];

% Compute the 16-point FFT of p1[n] and store it in P1[k]
P1 = fft(p1,N);

% Plot magnitude of P1[k] with respect to k
figure(1);
stem (n,abs(P1));
legend ('16-Point FFT')
xlabel('k');
ylabel('Magnitude of P_1[k]');


% Store values of p2[n]
p2 = [0 1 2 1 0 -1 -2 -1 0 0 0 0 0 0 0 0];

% Compute the 8-point FFT of p2[n] and store it in P2[k]
P2 = fft(p2,8);

% Plot magnitude of P2[k] with respect to k
figure(2);
stem (0:length(P2)-1,abs(P2));
legend ('8-Point FFT')
xlabel('k');
ylabel('Magnitude of P_2[k]');


% Compute the 16-point FFT of p2[n] and store it in P3[k]
P3 = fft(p2,N);

% Plot magnitude of P3[k] with respect to k
figure(3);
stem (n,abs(P3));
legend ('16-Point FFT')
xlabel('k');
ylabel('Magnitude of P_3[k]');
