%Corner Case
%Write a function called corners that takes a matrix as an input argument and returns four outputs: the elements at its four corners in this order: top_left, top_right, bottom_left and bottom_right. (Note that loops and if-statements are neither necessary nor allowed as we have not covered them yet.) See an example run below:
%>> [a, b, c, d] = corners([1 2; 3 4])
%a =
%     1
%b =
%     2
%c =
%     3
%d =
%     4 
function [top_left, top_right, bottom_left, bottom_right] = corners(A) 
    top_left = A(1,1)
    top_right = A(1, end)
    bottom_left = A(end, 1)
    bottom_right = A(end, end)
end
