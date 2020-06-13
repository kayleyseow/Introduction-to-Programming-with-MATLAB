function check_out(n,price)
    total = n*price;
    fprintf('%d items at %.2f each\nTotal = $%5.2f\n',n,price,total);
    % d signifies printing using scientific notation, except for whole numbers which will be printed without using either a decimal point or a scientific notation.
    % f means means print using fixed point notations instead of scientific notation. So that's just normal decimal notation, it's good for smaller numbers. 
end
