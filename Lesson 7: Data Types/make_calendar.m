%Demonstrate the Datetime and Duration Types in MATLAB
function cal_str = make_calendar(n_month, n_year)
    %make_calendar(month,year) one-month calendar with month-year heading
    %calendar = make_calendar(month,year) calendar is a column of strings
    dt = datetime(n_year,n_month,1); %3rd arg, or day, is arbitrary
    dt.Format = 'MMMM yyyy'; %format calendar title
    title_str = string(dt); %calendar title
    cal_num = calendar(dt); %days of the month in a double array
    cal_str = strings(11,1); %pre-allocation
    left = blanks(floor(14-strlength(title_str)/2)); %padding center title
    right = blanks(ceil(14-strlength(title_str)/2)); %padding center title
    cal_str([1,3,11]) = "————————————————————————————"; %woohoo nice line
    cal_str(2) = sprintf('%s', left, title_str, right); %centered title
    cal_str(4) = " Su  Mo  Tu  We  Th  Fr  Sa "; %day of the week
    for ii = 1:6 %for-loop through rows of cal_num
        temp = sprintf("%4s", string(cal_num(ii,:)));
        cal_str(ii+4) = strrep(temp," 0","  "); %replaces 0 with blank
    end
end
