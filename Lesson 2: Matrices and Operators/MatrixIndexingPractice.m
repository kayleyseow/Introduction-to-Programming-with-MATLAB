%Question: Given matrix A, assign the second column of A to a variable v.  Afterwards change each element of the last row of A to 0.
A = [1:5; 6:10; 11:15; 16:20];
v = A([1,2,3,4],2 )
A(end,[1,2,3,4,5]) = 0
