function rand_check
    N=5;
    list = rand(1,N);
    for x = list
        if x >0.5
            fprintf('random number %f is large.\n', x)
        else
            fprintf('random number %f is small.\n', x)
        end
    end
end
