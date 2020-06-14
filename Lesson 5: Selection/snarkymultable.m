%A more robust version of multable.m, this one has documentation and can catch errors!
%wOw documenting code is important !1!1! totally did not know that 1!1!1
%P.S. documentation will be shown with >> help multable
function [table, summa] = snarkymultable(n,m) 
    
    %MULTABLE multiplication table.
    %T = MULTABLE(N) returns an N-by-N matrix
    %containing the multiplication table for
    %the integers 1 through N.
    %MULTABLE(N,M) returns an N-by-M matrix.
    %Both input arguments must be positive
    %integers.
    %[T SM] = MULTABLE(...) returns the matrix
    %containing the multiplication table in T
    %and the sum of all its elements in SM.
    persistent error_count;
    if isempty(error_count),error_count = 0;
    if nargin < 1
        error('you must input at least one input argument');
    end 
    if nargin < 2 % or if nargin == 1
        m=n;
    elseif ~isscalar(m) || m<1 || m~= fix(m)
        error_count = error_count+1;
        if error_count <3, error('m needs to be a positive integer'); end
    end 
    if ~isscalar(n) || n<1 || n~= fix(n)
        error_count = error_count+1;
        if error_count <3, error('n needs to be a positive integer'); end
    end
    if error_count >=3
        error_count = 0; %reverts to basic error messages
        error('what part of "positive integer" do you not understand?');
    end
    table = (1:n)'*(1:m);
    if nargout == 2
        summa = sum(table(:));
end
