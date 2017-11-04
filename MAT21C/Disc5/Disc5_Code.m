% Problem 3) - How to plot two points with connections
figure;
plot3([3 2]',[-2 -6]',[4 -4]'); hold on;
plot3([2 2]',[-2 -6]',[-4 -4]','r--');
plot3([3 2]',[-2 -2]',[-4 -4]','r--');
plot3([3 2]',[-2 -6]',[-4 -4]','r--');
plot3([3 3]',[-2 -2]',[-4 4]','r--');
xlabel('x','Fontsize',16);
ylabel('y','Fontsize',16);
zlabel('z','Fontsize',16);
title('Problem 3)','Fontsize',18);

% Problem 4 - Plot a sphere with given diameter
figure;
d1 = [2 4 -5]; d2 = [0 -2 4];
a = (d1(1)+d2(1))/2; b=(d1(2)+d2(2))/2; c=(d1(3)+d2(3))/2; 
r = sqrt( (d1(1)-a)^2 + (d1(2)-b)^2 + (d1(3)-c)^2);
% Since taking the sqrt has two answers
Zp = @(x,y)  sqrt(-(x-a).^2 - (y-b).^2 + r.^2) + c;
Zn = @(x,y) -sqrt(-(x-a).^2 - (y-b).^2 + r.^2) + c;
% Create a circle (using polar coordinates) then
% generate many points inside the circle with 
% meshgrid. Convert these points to cartesian for 
% plotting our surface. I want you to think about 
% why using polar makes this easier to do.
[R,T] = meshgrid(0:.1:r,0:.1:2*pi);
X = R.*cos(T)+a;   Y = R.*sin(T)+b;
% Plot top half, then bottom
surf(X,Y,real(Zp(X,Y)));hold on;
surf(X,Y,real(Zn(X,Y)));
% Plot diameter
plot3([d1(1) d2(1)],[d1(2) d2(2)], [d1(3) d2(3)],'*-r');
% Prettify the plot
title('Problem 4','Fontsize',18);
xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);
zlabel('z','Fontsize',15);

% Prob 5 - Plot objects
% a) Sphere about (2,-3,0)
figure;
a = 2; b=-3; c=0; r = 4;
Zp = @(x,y)  sqrt(-(x-a).^2 - (y-b).^2 + r.^2) + c;
Zn = @(x,y) -sqrt(-(x-a).^2 - (y-b).^2 + r.^2) + c;
[R,T] = meshgrid(0:.1:r,0:.1:2*pi);
X = R.*cos(T)+a;   Y = R.*sin(T)+b;
% Plot top half, then bottom
surf(X,Y,real(Zp(X,Y)));hold on; surf(X,Y,real(Zn(X,Y)));
title('Problem 5a','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% b) Cylinder 3 units about z-axis
figure;
r = 3;
[X,Y,Z] = cylinder(r,100); surf(X,Y,Z);
title('Problem 5b','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% c) Cylinder 1/2 units about x-axis
figure;
r = 1/2;
[X,Y,Z] = cylinder(r,100); surf(Z,Y,X);
title('Problem 5c','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% d) Planes at y=1 and y=5
figure;
[x,z] = meshgrid(-1:0.1:1); 
y = zeros(size(x, 1)); 
surf(x, y+1, z); hold on;
surf(x, y+5, z); 
title('Problem 5d','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);


% e) Planes at y=1 and y=5
figure;
p1 = [3 0 0]; p2 = [0 0 3];
[x,y] = meshgrid(-4:0.1:4); % Generate x and y data
A=3/2; B=0; C=-3/2; D=0;
z = -1/C*(A*x + B*y + D); % Solve for z data
surf(x, y, z); hold on;
plot3([p1(1) p2(1)], [p1(2) p2(2)], [p1(3) p2(3)],'*-r');
title('Problem 5e','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% f) Planes at z=4
figure;
[x,y] = meshgrid(-1:0.1:1); 
z = zeros(size(x, 1)); 
surf(x, y, z+4); hold on;
surf(x, y, z+6); 
surf(x, y, z+2); 
title('Problem 5f','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);


% g) Planes at y=2, x=3, and y=3/2 x
figure;
[x,y] = meshgrid(1:0.1:5,0:.1:4); 
z = zeros(size(x, 1)); 
surf(x, z+2, y); hold on;
surf(z+3, y, x); 
surf(x,x*2/3,y); 
title('Problem 5f','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

% h) xy plane and point (0,0,2)
figure;
p = [0 0 2];
[x,y] = meshgrid(-1:.1:1); 
z = zeros(size(x, 1)); 
% Plot point and plane
surf(x, y, z); hold on;
plot3(p(1),p(2),p(3),'r*','Markersize',15);
% plot some lines and their midpoints
r = 1;
zp = @(x,y)  sqrt(x.^2 + y.^2 + r.^2);
for i=1:1000
    xr = rand(1)*(-1)^randi([0 1],1);
    yr = rand(1)*(-1)^randi([0 1],1);
    zr = zp(xr,yr);
    p2 = [xr yr 0]; % random point in xy
    plt1=plot3([p(1) xr], [p(2) yr], [p(3) zr],'*-r');
    plt2=plot3([xr p2(1)], [yr p2(2)], [zr p2(3)],'*-r');
    plt1.Color(4) = 0.1;
    plt2.Color(4) = 0.1;
    plot3(xr, yr, zr,'*b');
    %plot3((p(1)+p2(1))/2, (p(2) +p2(2))/2, (p(3) +p2(3))/2,'*b'); %mid
end 
title('Plotting Midpoint Between Plane and Point','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);

figure
p = [0 0 2];
[x,y] = meshgrid(-1:.1:1); 
z = zeros(size(x, 1)); 
% Plot point and plane
surf(x, y, z); hold on;
plot3(p(1),p(2),p(3),'r*','Markersize',15);
surf(x,y,zp(x,y))
title('Problem 5h','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);


% Problem 8
p1 = [1,-1,0]; p2 = [-1,2,6];
B = p2-p1;
figure;
plot3([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'*-r'); hold on;
plot3([0 B(1)], [0 B(2)], [0 B(3)],'g'); 
plot3([0 -B(1)],[0 -B(2)],[0 -B(3)],'b');
title('Problem 8','Fontsize',18);xlabel('x','Fontsize',15);
ylabel('y','Fontsize',15);zlabel('z','Fontsize',15);
