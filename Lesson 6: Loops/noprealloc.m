function noprealloc
    N = 2000;
    for ii = 1:N
        for jj = 1:N
            A(ii,jj) = ii*jj;
        end
    end
end
