%% Digital Signal Processing MATLAB HW2 - q5
% Professor: Dr. Sheikhzadeh
% Author: Amir Hossein Daraie - 9723710
% E-mail: daraieamirh@gmail.com
% University: Amirkabir University of Technology

clc;clear;close all;

analysis_filters = xlsread('filters.xls',1); % sheet 1
synthesis_filters = xlsread('filters.xls',2); % sheet 2

t = 0: 1/(2*pi): 60;
x1 = cos(2*pi/16*pi*t);
x2 = cos(2*5*pi/16*pi*t);
x3 = cos(2*9*pi/16*pi*t);
x4 = cos(2*13*pi/16*pi*t);
x = x1 + x2 + x3 + x4;

amplifier_coeffs = [2 0 1 0.5];

% filter the input with the analysis filter 
var1 = filter(analysis_filters(1,:),1,x);
var2 = downsample(var1,4); var3 = var2 * amplifier_coeffs(1); var4 = upsample(var3,4);
var5 = filter(synthesis_filters(1,:),1,var4);
subband(1,:) = var5;
var1 = filter(analysis_filters(2,:),1,x);
var2 = downsample(var1,4); var3 = var2 * amplifier_coeffs(2); var4 = upsample(var3,4);
var5 = filter(synthesis_filters(2,:),1,var4);
subband(2,:) = var5;
var1 = filter(analysis_filters(3,:),1,x);
var2 = downsample(var1,4); var3 = var2 * amplifier_coeffs(3); var4 = upsample(var3,4);
var5 = filter(synthesis_filters(3,:),1,var4);
subband(3,:) = var5;
var1 = filter(analysis_filters(4,:),1,x);
var2 = downsample(var1,4); var3 = var2 * amplifier_coeffs(4); var4 = upsample(var3,4);
var5 = filter(synthesis_filters(4,:),1,var4);
subband(4,:) = var5;

sig_res = sum(subband);

n = 512;
fs = 2*pi;
freq = linspace(-fs/2, fs/2, n);

X = fftshift(fft(x,n));
SIG_RES = fftshift(fft(sig_res, n));
plot(freq, abs(X), 'b')
hold on 
plot(freq, abs(SIG_RES), 'r')
legend('input signal','output signal')
xlim([0 pi])
xlabel('Normalized frequency')
ylabel('Magnitude')