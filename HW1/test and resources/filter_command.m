clc;
close all;
clear;
n = 0:6;
x = [1,1,1,1,0,0,0];
a = [1];
b = [0.5,1,2];
y = filter(b,a,x);
figure(1);
stem(n,y);
title('y(n) = 0.5*x(n) + x(n-1) + 2x(n-2)');
xlabel('n');
ylabel('Amplitude');
