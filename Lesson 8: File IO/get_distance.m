%Excel File I/O
%The attached Distances.xlsxOpens in new tab file contains a spreadsheet with the pairwise distances in miles of the top 100 US cities by population. A preview of the spreadsheet is shown below. The first row and first column contain the city names using the following format: city name comma space capitalized state abbreviation, e.g., Nashville, TN. Note that the very first cell of the spresheet, A1, is blank. 
%Write a function called get_distance that accepts two character vector inputs representing the names of two cities. The function returns the distance between them as an output argument called distance. For example, the call get_distance('Seattle, WA','Miami, FL') should return 3723. If one or both of the specified cities are not in the file, the function returns -1.
function distance = get_distance(x,y)
    [~,~,raw] = xlsread('Distances.xlsx');
    p = 0; q = 0;
    name_1 = strcmpi(x,raw(:,1));
    p = find(name_1 == 1);
    name_2 = strcmpi(y,raw(1,:));
    q = find(name_2 ==1);
    if isempty(p)==1 || isempty(q)==1
        distance=-1;
    else
        distance= all{p,q};
    end
end
