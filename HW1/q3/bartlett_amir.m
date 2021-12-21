function R = bartlett_amir(L)
    n = 0:L-1;
    R = zeros(1, L);
    for i=1:L-1
        if (n(i)< L/2)
            R(i) = 2*n(i)/(L-1);
        else
            R(i) = 2-(2*n(i)/(L-1));
        end
    end
end