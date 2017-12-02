%-------------------------------
% 8 - Critical Points
%-------------------------------
% a)
figure;
[x,y] = meshgrid(-10:.5:10);
z = @(x,y) 3*x.^2-6*x.*y+y.^2+12*x-16*y+1;
p = [-2,0];
surf(x,y,z(x,y)); hold on;
plot3(p(1),p(2),z(p(1),p(2)),'r*','Markersize',20);

title('z=3x^2 - 6xy + y^2 + 12x - 16y + 1','Fontsize',14);
xlabel('x','Fontsize',14);
ylabel('y','Fontsize',14);
zlabel('z','Fontsize',14);
