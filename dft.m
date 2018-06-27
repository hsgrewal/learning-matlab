% Discrete Fourier Transform

% Clear workspace
clc
close all

% Input Signal for FIR filter
x = [1 2 3 5 7 11 0 1 1 2 3 5 8 4 2 1];

% Impulse Response
h = [1 2 2 1 3 2 1 2 2 1 1 2 3 1 1 2];
h1 = h(1:8);
h2 = 2*h(1:8);
h3 = 4*h(1:8);

h4 = -2*h1;
h5 = -4*h1;
h6 = h1-1;
h7 = h1+1;

% DFT
N = length(h1);
for k = 0: N-1
    for n = 0: N-1
        H1(n+1) = h1(n+1) * exp(-j*2*pi*k*n/N);
    end
    H1k(k+1) = sum(H1);
end

% Plot
figure
% Magnitude Response
subplot(1,2,1)
mag1 = abs(H1k);
stem (0:N-1, mag1);
legend ('|H_1_k|')
xlim([0 7]);
title('DFT');
% Phase Response
subplot(1,2,2)
phasefun1 = angle(H1k);
stem (0:N-1, phasefun1);
legend ('phase H_1_k')
xlim([0 7]);

hold on;

N = length(h2);
for k = 0: N-1
    for n = 0: N-1
        H2(n+1) = h2(n+1) * exp(-j*2*pi*k*n/N);
    end
    H2k(k+1) = sum(H2);
end

subplot(1,2,1)
mag2 = abs(H2k);
stem (0:N-1, mag2);
legend ('|H_2_k|')
xlim([0 7]);
title('DFT');

subplot(1,2,2)
phasefun2 = angle(H2k);
stem (0:N-1, phasefun2);
legend ('phase H_2_k')
xlim([0 7]);

hold on;

N = length(h3);
for k = 0: N-1
    for n = 0: N-1
        H3(n+1) = h3(n+1) * exp(-j*2*pi*k*n/N);
    end
    H3k(k+1) = sum(H3);
end

subplot(1,2,1)
mag3 = abs(H3k);
stem (0:N-1, mag3);
legend ('|H_3_k|')
xlim([0 7]);
title('DFT');


subplot(1,2,2)
phasefun3 = angle(H3k);
stem (0:N-1, phasefun3);
legend ('phase H_3_k')
xlim([0 7]);
