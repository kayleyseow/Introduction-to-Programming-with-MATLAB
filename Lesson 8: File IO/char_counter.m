%Text File I/O
%Write a function called char_counter that counts the number of a certain character in a text file. The function takes two input arguments, fname, a char vector of the filename and character, the char it counts in the file. The function returns charnum, the number of characters found. If the file is not found or character is not a valid char, the function return -1. As an example, consider the following run. The file "simple.txt" contains a single line: "This file should have exactly three a-s..."
%charnum = char_counter('simple.txt','a')
%charnum = 
%   3
function charnum = char_counter(file,chara)
    fid = fopen(file, 'rt');
    if fid < 0
        charnum = -1;
        return;
    end
    if ischar(chara)==0
        charnum = -1;
        return;
    end
    x = fileread(file);
    n = length(x);
    total = 0;
    for ii = 1:n
        if (x(ii)==chara) && ischar(chara)
            total = total+1;
        end
    end
    charnum = total;
end
