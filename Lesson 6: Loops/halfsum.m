%Practice for-loops
%Write a function called halfsum that takes as input a matrix and computes the sum of its elements that are in the diagonal or are to the right of it. The diagonal is defined as the set of those elements whose column and row indexes are the same. In other words, the function adds up the element in the uppertriangular part of the matrix. The name of the output argument is summa.
%For example, with the matrix below as input
%A = 
%     1     2     3
%     4     5     6
%     7     8     9
%The function would return 26 (1 + 2 + 3 + 5 + 6 + 9 = 26)
function summa = halfsum(X)
    summa = 0;
    [row, col] = size(X);
    for x = 1:row
        for y = 1:col
            if x<=y
                summa = summa+X(x,y)
            end
        end
    end
end
