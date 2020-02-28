% Date: 27/02/2020

function y = mysecantwhile (f,x0 ,x1,n,tol);
% set x equal to the initial guess x0
r=10;
i=0;
disp('#-------- Iter.  Error        Solution ');
while r > tol % if while statement true iterates again
    fd = (f(x1)-f(x0))/(x1-x0);
   x2 = x1 - f(x1)/ fd;
    r = abs (x2- x1);
    x0 = x1;
    x1 = x2;
    disp ( sprintf ( '\t\t %3d \t %.7f \t  %.7f\t ', i+1,r,x2));
end
