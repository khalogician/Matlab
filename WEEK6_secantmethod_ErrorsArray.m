% Date: 03/03/2020

function secantmethod(f, x0,x1,n,tol);
r = 10;
for i = 1:n
    fd = (f(x1)-f(x0))/(x1-x0);
if r > tol
    x2 = x1 - f(x1) / fd;
    r = abs(f(x2));
    disp ( sprintf ( '\t\t %3d \t %.7f \t  %.7f\t ', i,r,x2));
    % assign the errors to a vector so that we can display it
    % and see how close we're getting to the actual value
    E(i)=r;
else break;
    end
    x0 = x1;    x1=x2;
end
plot(E, 'ro-');

% values to pass:
% secantmethod(f,3,2,100,0.000001)
% secantmethod(f,2,1,100,0.000001)
