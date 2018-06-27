% N fft
N = 16;

% Declare vector for n
n = 0:N-1;

% Store values of s[n]
s = [5 1 3 1 7 -1 -2 -1 6 2 3 5 8 10 4 9];

% Compute the 16-point FFT of s[n] and store it in FFT1
FFT1 = fft(s,N);

% Plot FFT1 with respect to k
figure(1);
stem (0:length(FFT1)-1,real(FFT1));
legend ('16-point FFT of s[n]')
xlabel('k');
ylabel('FFT1');


% Compute the 64-point FFT of s[n] and store it in FFT2
FFT2 = fft(s,64);

% Plot FFT2 with respect to k
figure(2);
stem (0:length(FFT2)-1,real(FFT2));
legend ('64-point FFT of s[n]')
xlabel('k');
ylabel('FFT2');


% Compute the 256-point FFT of s[n] and store it in FFT3
FFT3 = fft(s,256);

% Plot FFT3 with respect to k
figure(3);
stem (0:length(FFT3)-1,real(FFT3));
legend ('256-point FFT of s[n]')
xlabel('k');
ylabel('FFT3');
