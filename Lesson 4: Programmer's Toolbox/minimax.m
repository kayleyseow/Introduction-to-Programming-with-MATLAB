%Write a function called minimax that takes M, a matrix input argument and returns mmr, a row vector containing the absolute values of the difference between the maximum and minimum valued elements in each row. As a second output argument called mmm, it provides the difference between the maximum and minimum element in the entire matrix.
function [mmr, mmm] = minimax(A)
    mmr=max(A')-min(A')
    mmm=max(max(A))-min(min(A))
end
