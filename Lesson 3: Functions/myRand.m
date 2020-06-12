%creates a 3x4 array of random numbers from 1 to 10
function myRand
    a = 1+rand(3,4)*9
    %include *9 to make range of random numbers 0-9
    %include 1+ to shift range of random numbers from 0-9 to 1-10
end
