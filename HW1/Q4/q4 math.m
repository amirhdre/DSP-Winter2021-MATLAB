%% Echo 
clear; close all;  

%%
[x,Fs] = audioread('Q4\voice.wav');  
sound(x,Fs);  

alpha = 0.7;
M = 44100;
N = 3;

y = zeros(size(x));  
y(1:M) = x(1:M);  
for k = 0:N
    for i=M+1:length(x)  
        y(i) = x(i) + alpha^k*x(i-M);  
    end  
end

%% using filter method.  
% for k = 0:N
%     b = [1,zeros(1,k*M),alpha^k];  
%     y = y + filter(b,1,x);
% end

