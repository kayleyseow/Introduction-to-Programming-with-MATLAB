%Answers to caesar from Coursera
function y = caesarCircshiftFunction(ch, key)
    v = ' ' : '~';
    [~, loc] = ismember(ch, v);
    v2 = circshift(v, -key);
    y = v2(loc);
end
