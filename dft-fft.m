% Clear workspace
clc
clearvars

% Impulse response
h = [1 2 2 1 3 2 1 2 2 1 1 2 3 1 1 2];
h1 = h(1:8);
h2 = 2*h(1:8);
h3 = 4*h(1:8);
h4 = h;
h5 = 2*h4;
h6 = 4*h4;

% Compute DFT using FFT
N = length(h1);
H1kf = fft(h1);

N = length(h2);
H2kf = fft(h2);

N = length(h3);
H3kf = fft(h3);


N = length(h4);
H4kf = fft(h4);


N = length(h5);
H5kf = fft(h5);

N = length(h6);
H6kf = fft(h6);

% Plot
figure
subplot(1,2,1)
mag1 = abs(H1kf);
stem (0:N-1, mag1);
legend ('|H_1f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun1 = angle(H1kf);
stem (0:N-1, phasefun1);
legend ('phase H_1f_k')
xlim([0 N-1]);

figure(2)
subplot(1,2,1)
mag2 = abs(H2kf);
stem (0:N-1, mag2);
legend ('|H_2f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun2 = angle(H2kf);
stem (0:N-1, phasefun2);
legend ('phase H_2f_k')
xlim([0 N-1]);

figure(3)
subplot(1,2,1)
mag3 = abs(H3kf);
stem (0:N-1, mag3);
legend ('|H_3f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun3 = angle(H3kf);
stem (0:N-1, phasefun3);
legend ('phase H_3f_k')
xlim([0 N-1]);

figure(4)
subplot(1,2,1)
mag4 = abs(H4kf);
stem (0:N-1, mag4);
legend ('|H_4f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun4 = angle(H4kf);
stem (0:N-1, phasefun4);
legend ('phase H_4f_k')
xlim([0 N-1]);

figure(5)
subplot(1,2,1)
mag5 = abs(H5kf);
stem (0:N-1, mag5);
legend ('|H_5f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun5 = angle(H5kf);
stem (0:N-1, phasefun5);
legend ('phase H_5f_k')
xlim([0 N-1]);

figure(6)
subplot(1,2,1)
mag6 = abs(H6kf);
stem (0:N-1, mag6);
legend ('|H_6f_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun6 = angle(H6kf);
stem (0:N-1, phasefun6);
legend ('phase H_6f_k')
xlim([0 N-1]);
