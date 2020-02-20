% Date: 20/02/2020
% plotting 2D graphs

% step 1: defining our vectors
x = [-4:0.1:4];
y = [-5:0.1:5];

% step 2: creating 2-D grid coordinates defined by the vectors x and y
[u v] = meshgrid(x,y);

% step 3: defining z = f(x,y)
% one example: z = sin(u+v);
% another example: guassian surface
% exp(-(u+2).^2+(v+3).^2) shifts the mean (which happens to be the middle
% of the graph to (-2,-3)
z = exp(-(u.^2+v.^2));

% step 4: creates a mesh plot (a 3-D surface)
% one way to do it: mesh(z);
% another way to do it: However, this restrics the interval of x and y to
% the previously defined one in step1
mesh(u,v,z);

% to label the x-axis, y-axis, and z-axis.
xlabel('u');
ylabel('v');
zlabel('Two dim Gauss-function');
% to give the graph a title
title('Two dim surf-plots');

% generating contour plots
% contour(u,v,z,30) generates 30 rings
figure(2);contour(u,v,z,30);

% generating a surface plot
% [documentation] surf(Z) creates a surface plot and uses the column and 
% row indices of the elements in Z as the x- and y-coordinates.
figure(3);surfc(u,v,z);
% to check a specific portion of the graph we pass the interval parameters
% for u[-1,1], v[0,5], and z[5,6] to axis() 
axis([-1 1 0 5 5 6]);

