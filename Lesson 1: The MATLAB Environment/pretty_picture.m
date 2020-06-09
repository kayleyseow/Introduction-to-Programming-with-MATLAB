%I do not know how to print Hello World in MATLAB so this should suffice
function pretty_picture(N)
    t=0:(.99*pi/2):N;
    x=t.*cos(t);
    y=t.*sin(t);
    plot (x,y,'k')
    axis square
end
