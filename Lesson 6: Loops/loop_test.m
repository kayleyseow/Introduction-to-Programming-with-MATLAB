function loop_test(N)
    total = 0;
    for n = 1:N
        n
        total
        n = n+1;
        total = total + n;
    end
    fprintf('Total: %d\n',total);
end
