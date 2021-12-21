function w = hamming_amir(L)
    n = 0:L-1;
    w = 0.54-0.46*cos(2*n*pi/(L-1));
end