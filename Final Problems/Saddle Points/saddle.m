%Write a function called saddle that finds saddle points in the input matrix M. For the purposes of this problem, a saddle point is defined as an element whose value is greater than or equal to every element in its row, and less than or equal to every element in its column. Note that there may be more than one saddle point in M. Return a matrix called indices that has exactly two columns. Each row of indices corresponds to one saddle point with the first element of the row containing the row index of the saddle point and the second element containing the column index. If there is no saddle point in M, then indices is the empty array.
function indices = saddle(M)
    s = size(M);
    [maxrow] = max(M,[],2);
    [mincol] = min(M,[],1);
    indices = [];
    for jj = 1:s(2)
        for ii = 1:s(1)
            if (M(ii,jj) >= maxrow(ii)) && (M(ii,jj) <= mincol(jj))
                indices = [indices; [ii,jj]];
            end
        end
    end
end
