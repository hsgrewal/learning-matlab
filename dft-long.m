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

% Compute DFT using loops
N = length(h1);
for k = 0: N-1
    for n = 0: N-1
        H1(n+1) = h1(n+1) * exp(-j*2*pi*k*n/N);
    end
    H1k(k+1) = sum(H1);
end

N = length(h2);
for k = 0: N-1
    for n = 0: N-1
        H2(n+1) = h2(n+1) * exp(-j*2*pi*k*n/N);
    end
    H2k(k+1) = sum(H2);
end

N = length(h3);
for k = 0: N-1
    for n = 0: N-1
        H3(n+1) = h3(n+1) * exp(-j*2*pi*k*n/N);
    end
    H3k(k+1) = sum(H3);
end

N = length(h4);
for k = 0: N-1
    for n = 0: N-1
        H4(n+1) = h4(n+1) * exp(-j*2*pi*k*n/N);
    end
    H4k(k+1) = sum(H4);
end

N = length(h5);
for k = 0: N-1
    for n = 0: N-1
        H5(n+1) = h5(n+1) * exp(-j*2*pi*k*n/N);
    end
    H5k(k+1) = sum(H5);
end

N = length(h6);
for k = 0: N-1
    for n = 0: N-1
        H6(n+1) = h6(n+1) * exp(-j*2*pi*k*n/N);
    end
    H6k(k+1) = sum(H6);
end

% Plot
figure
subplot(1,2,1)
mag1 = abs(H1k);
stem (0:N-1, mag1);
legend ('|H_1_k|')
xlim([0 7]);

subplot(1,2,2)
phasefun1 = angle(H1k);
stem (0:N-1, phasefun1);
legend ('phase H_1_k')
xlim([0 7]);

figure(2)
subplot(1,2,1)
mag2 = abs(H2k);
stem (0:N-1, mag2);
legend ('|H_2_k|')
xlim([0 7]);

subplot(1,2,2)
phasefun2 = angle(H2k);
stem (0:N-1, phasefun2);
legend ('phase H_2_k')
xlim([0 7]);

figure(3)
subplot(1,2,1)
mag3 = abs(H3k);
stem (0:N-1, mag3);
legend ('|H_3_k|')
xlim([0 7]);

subplot(1,2,2)
phasefun3 = angle(H3k);
stem (0:N-1, phasefun3);
legend ('phase H_3_k')
xlim([0 7]);

figure(4)
subplot(1,2,1)
mag4 = abs(H4k);
stem (0:N-1, mag4);
legend ('|H_4_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun4 = angle(H4k);
stem (0:N-1, phasefun4);
legend ('phase H_4_k')
xlim([0 N-1]);

figure(5)
subplot(1,2,1)
mag5 = abs(H5k);
stem (0:N-1, mag5);
legend ('|H_5_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun5 = angle(H5k);
stem (0:N-1, phasefun5);
legend ('phase H_5_k')
xlim([0 N-1]);

figure(6)
subplot(1,2,1)
mag6 = abs(H6k);
stem (0:N-1, mag6);
legend ('|H_6_k|')
xlim([0 N-1]);

subplot(1,2,2)
phasefun6 = angle(H6k);
stem (0:N-1, phasefun6);
legend ('phase H_6_k')
xlim([0 N-1]);
