function secantmethod(f, x0,x1,n,tol);
r = 10;
for i = 1:n
    fd = (f(x1)-f(x0))/(x1-x0);
if r > tol
    x2 = x1 - f(x1) / fd;
    r = abs(f(x2));
    disp ( sprintf ( '\t\t %3d \t %.7f \t  %.7f\t ', i,r,x2));
    E(i)=r;
    else break;
    end
    x0 = x1;    x1=x2;
end
plot(E, 'ro-');
