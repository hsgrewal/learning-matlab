% Convolute input x and various impulse responses

% Clear workspace
clc
close all

% Input Signal for FIR filter
x = [1 2 3 5 7 11 0 1 1 2 3 5 8 4 2 1];

% Impulse Response for first filter
h1 = [1 2 2 1 3 2 1 2 2 1 1 2 3 1 1 2];
h2 = 2*h1;
h3 = 4*h1;
h4 = -2*h1;
h5 = -4*h1;
h6 = h1-1;
h7 = h1+1;

% Convolution
y1 = conv(x,h1);
y2 = conv(x,h2);
y3 = conv(x,h3);
y4 = conv(x,h4);
y5 = conv(x,h5);
y6 = conv(x,h6);
y7 = conv(x,h7);

% Plot
stem (0:length(y1)-1,y1);
legend ('y_1[n]=x[n]*h_1[n]')
xlabel('n');
ylabel('y_1[n]');
title('First Filter');
hold on;

stem (0:(length(y2)-1),y2);
legend ('y_2[n]=x[n]*h_2[n]')
xlabel('n');
ylabel('y_2[n]');
title('Second Filter');

stem (0:(length(y3)-1),y3);
legend ('y_3[n]=x[n]*h_3[n]')
xlabel('n');
ylabel('y_3[n]');
title('Third Filter');

stem (0:(length(y4)-1),y4);
legend ('y_4[n]=x[n]*h_4[n]')
xlabel('n');
ylabel('y_4[n]');
title('Fourth Filter');

stem (0:(length(y5)-1),y5);
legend ('y_5[n]=x[n]*h_5[n]')
xlabel('n');
ylabel('y_5[n]');
title('Fifth Filter');

stem (0:(length(y6)-1),y6);
legend ('y_6[n]=x[n]*h_6[n]')
xlabel('n');
ylabel('y_6[n]');
title('Sixth Filter');

stem (0:length(y7)-1,y7);
legend ('y_7[n]=x[n]*h_7[n]')
xlabel('n');
ylabel('y_7[n]');
title('Seventh Filter');
