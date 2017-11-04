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
