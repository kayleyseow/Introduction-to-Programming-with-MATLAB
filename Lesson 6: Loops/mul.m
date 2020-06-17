%script to demonstrate implicit versus explicit loops 
[row, column] = size (A);
for r = 1: row
    for c = 1:column
        P(r,c) = A(r,c)*A(r,c);
    end
end
