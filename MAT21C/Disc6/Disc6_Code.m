
% Problem 6
u = [1,2,-1];
v = [2,1,3];
w = [1,-1,2];
area = norm(cross(u,v))*norm(w);
sprintf('Area of Parallelpiped is %f',area)
