%% Digital Signal Processing MATLAB HW - q3
% Professor: Dr. Sheikhzadeh
% Author: Amir Hossein Daraie - 9723710
% E-mail: daraieamirh@gmail.com
% University: Amirkabir University of Technology

%% Clear recent data
clear; close all; clc;

%% rect
for M = [10,50,101]
    w = rect_amir(M);
    wvtool(w)
end

%% hanning
for M = [10,50,101]
    w = hanning_amir(M);
    wvtool(w)
end

%% hamming
for M = [10,50,101]
    w = hamming_amir(M);
    wvtool(w)
end

%% blackman
for M = [10,50,101]
    w = blackman_amir(M);
    wvtool(w)
end


%% bartlett
for M = [10,50,101]
    w = bartlett_amir(M);
    wvtool(w)
end
