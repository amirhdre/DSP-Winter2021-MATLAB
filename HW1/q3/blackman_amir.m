function w = blackman_amir(L)
    n = 0:L-1;
    w = 0.42-0.5*cos(2*pi*n/(L-1))+0.08*cos(4*pi*n/(L-1));
end