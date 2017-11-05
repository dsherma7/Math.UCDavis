% ----------------------------------------------------
% Problem 6 - Compute area of parallelpiped
% ----------------------------------------------------
u = [1,2,-1];
v = [2,1,3];
w = [1,-1,2];
area = norm(cross(u,v))*norm(w);
sprintf('Area of Parallelpiped is %f',area)

% ----------------------------------------------------
% Problem 11 - Plot lines L and M
% ----------------------------------------------------
t = -10:.1:10;
s = -10:.1:10;
L = [3-t;2+t;t];
M = [3+s;3-s;2*s+7];
figure;
plot3(L(1,:),L(2,:),L(3,:)); hold on;
plot3(M(1,:),M(2,:),M(3,:));
title('Problem 5a','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% ----------------------------------------------------
% Problem 17 - Distance between 2 parallel planes
% ----------------------------------------------------
[x,y] = meshgrid(-1:.1:1);
z1 = (1/3)*(6 - 2*y-x);
z2 = (1/3)*(0 - 2*y-x);
figure;
surf(x,y,z1); hold on;
surf(x,y,z2);
title('Problem 17','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% Plot normal vector of plane pointing
% down, since (0,0,0) is below plane
n  = -[1,2,3];
p  = [0,0,2]; % point right under origin
pn = [0,0,0];
plot3([p(1) pn(1)], [p(2) pn(2)], [p(3) pn(3)],'*-r');  



