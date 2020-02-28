% Date: 27/02/2020

function secantmethod(f,x0 ,x1, n);
for i = 1:n
    fd = (f(x1)-f(x0))/(x1-x0);
    x2 = x1 - f(x1) / fd
    x0 = x1; % set x equal to the initial guess x0
    x1 = x2;
end
