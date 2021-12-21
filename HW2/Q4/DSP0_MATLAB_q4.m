clear 
close all
clc

%% Orth fir filters

h0=[1  2  3 4  5 6];
h1=[-6 5 -4 3 -2 1];

[H0,w0] = freqz(h0,1,linspace(0,pi,2048));
[H1,w1] = freqz(h1,1,linspace(0,pi,2048));

figure
plot(w0,abs(H0))
hold on
plot(w0,abs(H1)) % w0 == w1
legend('H0','H1')
title('Orth FIR Filters')
xlabel('frequency (\times \pi)')
ylabel('Mag')

%% Mirror filters

h0=[1 3 1 4 1 3 1];
h1=[-1 3 -1 4 -1 3 -1];

[H0,w0] = freqz(h0,1,linspace(0,pi,2048));
[H1,w1] = freqz(h1,1,linspace(0,pi,2048));

figure
plot(w0,abs(H0))
hold on
plot(w0,abs(H1)) % w0 == w1
legend('H0','H1')
title('Mirror FIR Filters')
xlabel('frequency (\times \pi)')
ylabel('Mag')
