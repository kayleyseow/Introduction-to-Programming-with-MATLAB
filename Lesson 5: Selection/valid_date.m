%Lesson 5 Wrap-up
%Write a function called valid_date that takes three positive integer scalar inputs year, month, day. If these three represent a valid date, return a logical true, otherwise false. The name of the output argument is valid. If any of the inputs is not a positive integer scalar, return false as well. Note that every year that is exactly divisible by 4 is a leap year, except for years that are exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years. For example, the year 1900 was not leap year, but the year 2000 was. Note that your solution must not contain any of the date related built-in MATLAB functions.
function valid = valid_date(year,month,day)
   if ~(isscalar(year) && isscalar(month) && isscalar(day)) 
       valid = false;
   elseif ~all([year, month, day] > 0)
       valid = false;
   elseif any(rem([year, month, day], 1))
       valid = false;
   elseif (month > 12) || (day> 31)
       valid = false;
   else
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       if isequal(rem(year, 4), 0) && (~isequal(rem(year, 100), 0) || isequal(rem(year, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(month);
       if day > maxDay
           valid = false;
       else
           valid = true;
       end
   end
end
