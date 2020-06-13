    %SubFunctions practice
    function [a,s] = myRandMultiple(low, high)
    a = low+rand(3,4)*(high-low);
    s = sumAllElements(a);
    
    function summa = sumAllElements(M)
    global v;%makes v a global variable
    v=M(:);
    summa=sum(v);
