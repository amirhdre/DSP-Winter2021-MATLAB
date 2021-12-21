clc;
clear;
close all

%% sample 1

num = [1,-1,3];
den = [1,1/3,1/6];
[h,om] = freqz(num,den);
figure(1);
subplot(211);
plot(om/pi,20*log10(abs(h)));
subplot(212);
plot(om/pi,angle(h));


%% sample 2

% H(ej?)= ( b(1)+b(2)e?j?+..+b(n+1)e?j?n )/( a(1)+a(2)e?j?+...+a(m+1)e?j?m )
% H(z)= 0.05634(1+z?1)(1?1.0166z?1+z?2)/(1?0.683z?1)(1?1.4461z?1+0.7957z?2).
% Express the numerator and denominator as polynomial convolutions. Find the frequency response at 2001 points spanning the complete unit circle.
b0 = 0.05634;
b1 = [1  1];
b2 = [1 -1.0166 1];
a1 = [1 -0.683];
a2 = [1 -1.4461 0.7957];

b = b0*conv(b1,b2);
a = conv(a1,a2);

[h,w] = freqz(b,a,'whole',2001);

plot(w/pi,20*log10(abs(h)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.5:2;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
