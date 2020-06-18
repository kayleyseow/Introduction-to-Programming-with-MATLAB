%Lesson 6 Wrap-up
%Write a function called max_sum that takes v, a row vector of numbers, and n, a positive integer as inputs. The function needs to find the n consecutive elements of v whose sum is the largest possible. In other words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, it will find 4 5 and 4 because their sum of 13 is the largest of any 3 consecutive elements of v. If multiple such sequences exist in v, max_sum returns the first one. The function returns summa, the sum as the first output argument and index, the index of the first element of the n consecutive ones as the second output. If the input n is larger than the number of elements of v, the function returns 0 as the sum and -1 as the index. Here are a few example runs: 
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],3)
%   summa = 13 
%   index = 4
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],2) 
%    summa = 9 
%    index = 4
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],1) 
%    summa = 5 
%    index = 5
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],9) 
%    summa = 25 
%    index = 1
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],10) 
%    summa = 0 
%    index = -1 

%My solution: 
function [summa, index] = max_sum(v, n)
    maxv = 0;
        ind = -1;
    if n > size(v,2)
        summa = 0;
        index = -1;
    else
        
        for i=1:n
            maxv=sum(v(1:n));
            ind=1;
        end
         for j=2:(size(v,2)-n+1)
            total=0;
            total=sum(v(j:(j+n-1)));
            if total>maxv
                maxv=total;
                ind=j;
            else
                continue;
        end
    end
end
summa =maxv
index=ind

%Coursera solution:
%function [summa, ind] = max_sum(v,n)
    % If n is greater than v return the specified values
    % Using return keyword exits the function so no further code is
    % evaluated
    if n > length(v)
%        summa = 0;
%        ind = -1;
%        return;
%    end
    
    % Initialize summa to -inf.
    % Then work through the vector, checking if each sum is larger than the
    % current value of summa
    
%    summa = -inf;
%    ind = -1;
    % Once we get to length(v)-n+1 we stop moving through the vector
%    for ii = 1:length(v)-n+1
%        currentV = v(ii:(ii+n-1));
%        currentSumma = sum(currentV);
        % If currentSumma greater than summa, update summa and ind
%        if currentSumma > summa
%            summa = currentSumma;
%            ind = ii;
%        end
%    end
%end
