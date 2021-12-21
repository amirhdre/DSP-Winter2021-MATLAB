% By the Definition of Upsampling and Downsampling, Design an App according to the clip in Q2 folder that show the rate 
% factor effect of the input sequence x[n] = sinc((n-M/2)/(2N)).^2 for n=0,1,…,M-1, M = 300, in frequency Domain

% N: the bandwidth factor of tri(f) which is pi/N
% L: the Upsampler factor
% M: the downsampler factor
% w: filter normalized cut-off frequency (for creating filter use fir1 command in MATLAB)

% b = fir1(filter Order, Normalized cut-off frequncy)
% Hint: let Order Filter be half of the length of input you want to filter.

w=2;
L=2;
N=3;
M=1;
m=300;
n=0:m-1;
x=sinc((n-m/2)/(2*N)).^2;
[H,w] = freqz(x,1,linspace(-3*pi,3*pi,1024));
plot(w, abs(H))
y1 = fir1(150, 0.2, 'low');
y = conv(y1,x);

hold on
[H,w] = freqz(y,1,linspace(-3*pi,3*pi,1024));
plot(w, abs(H))