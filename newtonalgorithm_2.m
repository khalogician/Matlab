function y = mynewtonif(f,fd,x0,n,tol);     % we're adding an extra argument which is the tolerance
r=10;
x=x0;
disp('#-------- Iter.  Error        Solution ');
for i = 1:n                                                                          % Do n times
if r > tol 
    x = x - f(x)/ fd(x);                                                       % Newton ’s formula
    r = abs (f(x));
    disp ( sprintf ( '\t\t %3d \t %.7f \t  %.7f\t ', i,r,x));
else     break; 
end
end
