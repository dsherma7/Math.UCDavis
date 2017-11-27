%-------------------------------
% 7 - Find the tangent planes
%-------------------------------
figure;
[x,y] = meshgrid(0:.1:2,-1:.1:1);
z = x.*y.^3-x.^3+7;
p = [1, 0, 6];
surf(x,y,z); hold on;
plot3(p(1),p(2),p(3),'r*','Markersize',20);

% Plot plane A
[x,z] = meshgrid(0:.1:2,2:1:6.2);
y = ones(size(x,1),size(z,2))*p(2);
surf(x,y,z);

% Plot plane B
[y,z] = meshgrid(-1:.1:1,2:1:6.2);
x = ones(size(y,1),size(z,2))*p(1);
surf(x,y,z);

% Plot lines
[y,x] = meshgrid(0:.1:2);
z = -3*x+9;
surf(x,0*y,z,'Linewidth',4);

[y,x] = meshgrid(-1:.1:1);
x = ones(size(x));
z = -3*x+9;
surf(x,y,z,'Linewidth',4);

title('Problem 7','Fontsize',14);
xlabel('x','Fontsize',14);
ylabel('y','Fontsize',14);
zlabel('z','Fontsize',14);


%-------------------------------
% 12 - Plot the paraboloid
%-------------------------------
figure;
[x,y] = meshgrid(-4.9:.1:4.9);
z = 25-x.^2-y.^2;
surf(x,y,z);

title('Problem 12','Fontsize',14);
xlabel('x','Fontsize',14);
ylabel('y','Fontsize',14);
zlabel('z','Fontsize',14);
