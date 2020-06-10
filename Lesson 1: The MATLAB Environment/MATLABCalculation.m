%We borrowed $1000 at a 10% annual interest rate. If we did not make a payment for two years, and assuming there is no penalty for non-payment, how much do we owe now? Assign the result to a variable called debt.
p = 1000;
r = 0.1;
n = 1;
t=2;
debt = p*(1+r/n)^(n*t);
