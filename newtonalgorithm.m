function x = mynewton (f,fd ,x0 ,n)
format long                                       % prints more digits
x = x0;                                           % set x equal to the initial guess x0
for i = 1:n                                       % Do n times
x = x - f(x)/ fd(x)                               % Newton ’s formula , prints x too
end

% to 
