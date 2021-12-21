function w = hanning_amir(L)
    n = 0:L-1;
    w = 0.5*(1-cos(2*pi*n/(L-1)));
end