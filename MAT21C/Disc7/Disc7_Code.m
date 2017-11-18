% ----------------------------------------------------
% Problem 1 - Plot the following on 2D plots
% ----------------------------------------------------
% a) y=3
figure;
x = -1:.1:1; y = zeros(length(x),1)+3;
plot(x,y,'Linewidth',6); title('y=3','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1a.png')
% b) x=-2
figure;
y = -1:.1:1; x = zeros(length(x),1)-2;
plot(x,y,'Linewidth',6); title('x=-2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1b.png')
% c) y=x
figure;
x = -1:.1:1; y = x;
plot(x,y,'Linewidth',6); title('y=x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1c.png')
% d) y=3-x
figure;
x = -1:.1:1; y = 3-x;
plot(x,y,'Linewidth',6); title('y=3-x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1d.png')
% e) y=x^3
figure;
x = -1:.1:1; y = x.^3;
plot(x,y,'Linewidth',6); title('y=x^3','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1e.png')
% f) y=e^x
figure;
x = -1:.1:1; y = exp(x);
plot(x,y,'Linewidth',6); title('y=e^x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1f.png')
% g) y=lnx
figure;
x = 0:.1:1; y = log(x); % Note log(x) = ln(x)
plot(x,y,'Linewidth',6); title('y=lnx','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1g.png')
% h) y=sqrt(x)
figure;
x = 0:.1:1; y = sqrt(x);
plot(x,y,'Linewidth',6); title('y=x^{1/2}','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1h.png')
% i) x=y^2
figure;
y = -1:.1:1; x = y.^2;
plot(x,y,'Linewidth',6); title('x=y^2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1i.png')
% j) y=1/x
figure;
x = -1:.1:1; y = 1./x;
plot(x,y,'Linewidth',6); title('y=1/x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'1j.png')

% ----------------------------------------------------
% Problem 2 - Plot level curves of the following
% ----------------------------------------------------
zs = -3:3;
% a) z=y
figure;
x = -1:.1:1;
for z=zs
   y=zeros(1,length(x))+z;
   plot(x,y,'Linewidth',6);hold on;
end
title('z=y','Fontsize',22); 
xlabel('x','Fontsize',18);ylabel('y','Fontsize',18);
saveas(gcf,'2a.png')
% b) z=1-x-y
figure;
x = -1:.1:1;
for z=zs
   y=1-zeros(1,length(x))-z-x;
   plot(x,y,'Linewidth',6);hold on;
end
title('z=1-x-y','Fontsize',22); 
xlabel('x','Fontsize',18);ylabel('y','Fontsize',18);
saveas(gcf,'2b.png')
% c) z^2=x^2+y^2
figure;
x = -3:.00001:3;
for z=zs
   col = [rand(1),rand(1),rand(1)]; 
   % Plot top of circle
   y=sqrt((zeros(1,length(x))-z).^2-x.^2);
   y(real(y)==0)=NaN;
   plot(x,y,'Linewidth',6,'Color',col);hold on;
   % Plot bottom of circle
   y=-sqrt((zeros(1,length(x))-z).^2-x.^2);
   y(real(y)==0)=NaN;
   plot(x,y,'Linewidth',6,'Color',col);hold on;
end
title('z^2=x^2+y^2','Fontsize',22); 
xlabel('x','Fontsize',18);ylabel('y','Fontsize',18);
saveas(gcf,'2c.png')
% d) x^2+y^2+z^2=9
figure;
x = -3:.00001:3;
for z=zs
   col = [rand(1),rand(1),rand(1)];
   % Plot top of circle
   y=sqrt(9-(zeros(1,length(x))-z).^2-x.^2);
   y(real(y)==0)=NaN;
   plot(x,y,'Linewidth',6,'Color',col);hold on;
   % Plot bottom of circle
   y=-sqrt(9-(zeros(1,length(x))-z).^2-x.^2);
   y(real(y)==0)=NaN;
   plot(x,y,'Linewidth',6,'Color',col);hold on;
end
title('x^2+y^2+z^2=9','Fontsize',22); 
xlabel('x','Fontsize',18);ylabel('y','Fontsize',18);
saveas(gcf,'2d.png')






% ----------------------------------------------------
% Problem 3 - Plot the plane traces
% ----------------------------------------------------
% a) x+2y+3z=6
a = -1:.1:1; figure;
% Plot xy trace
x = a; y = (1/2)*(6-x);
subplot(1,3,1);
plot(x,y,'Linewidth',5);
title('xy Trace','Fontsize',18);
% Plot xz trace
x = a; z = (1/3)*(6-x);
subplot(1,3,2);
plot(x,z,'Linewidth',5);
title('xz Trace','Fontsize',18);
% Plot yz trace
y = a; z = (1/3)*(6-2*y);
subplot(1,3,3); 
plot(y,z,'Linewidth',5);
title('yz Trace','Fontsize',18);
set(gcf, 'Position', [100 200 600 200])
saveas(gcf,'3a.png');

% b) z=x^2+y^2
a = -1:.1:1; figure;
% Plot xy trace
x = 0; 
subplot(1,3,1);
plot(x,sqrt(-x.^2),'Linewidth',5);hold on;
plot(x,-sqrt(-x.^2),'Linewidth',5);
title('xy Trace','Fontsize',18);
% Plot xz trace
x = a; z = x.^2;
subplot(1,3,2);
plot(x,z,'Linewidth',5);
title('xz Trace','Fontsize',18);
% Plot yz trace
y = a; z = y.^2;
subplot(1,3,3); 
plot(y,z,'Linewidth',5);
title('yz Trace','Fontsize',18);
set(gcf, 'Position', [100 200 600 200])
saveas(gcf,'3b.png');

% c) z=y^2-x^2
a = -1:.1:1; figure;
% Plot xy trace
x = a;  
subplot(1,3,1);
plot(x,sqrt(x.^2),'Linewidth',5);hold on;
plot(x,-sqrt(x.^2),'Linewidth',5);
title('xy Trace','Fontsize',18);
% Plot xz trace
x = a; z = -x.^2;
subplot(1,3,2);
plot(x,z,'Linewidth',5);
title('xz Trace','Fontsize',18);
% Plot yz trace
y = a; z = y.^2;
subplot(1,3,3); 
plot(y,z,'Linewidth',5);
title('yz Trace','Fontsize',18);
set(gcf, 'Position', [100 200 600 200])
saveas(gcf,'3c.png');

% d) z^2=x^2+y^2
a = -1:.1:1; figure;
% Plot xy trace
x = a; 
subplot(1,3,1);
plot(0,0,'Linewidth',5);
title('xy Trace','Fontsize',18);
% Plot xz trace
x = a; 
subplot(1,3,2); 
plot(x,sqrt(x.^2), 'Linewidth',5); hold on;
plot(x,-sqrt(x.^2),'Linewidth',5);
title('xz Trace','Fontsize',18);
% Plot yz trace
y = a; z = y.^2;
subplot(1,3,3); 
plot(y,sqrt(y.^2), 'Linewidth',5); hold on;
plot(y,-sqrt(y.^2),'Linewidth',5);
title('yz Trace','Fontsize',18);
set(gcf, 'Position', [100 200 600 200])
saveas(gcf,'3d.png');


% ----------------------------------------------------
% Problem 4 - Plot the following on 3D plots
% ----------------------------------------------------
% a) y=3
figure;
[x,z] = meshgrid(-1:.1:1); y = zeros(size(x))+2;
surf(x,y,z); title('y=3','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4a.png')
% b) x=-2
figure;
[y,z] = meshgrid(-1:.1:1); x = zeros(size(x))-2;
surf(x,y,z); title('x=-2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4b.png')
% c) y=x
figure;
[x,z] = meshgrid(-1:.1:1); y = x;
surf(x,y,z); title('y=x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4c.png')
% d) y=3-x
figure;
[x,z] = meshgrid(-1:.1:1); y = 3-x;
surf(x,y,z); title('y=3-x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4d.png')
% e) y=x^3
figure;
[x,z] = meshgrid(-1:.1:1); y = x.^3;
surf(x,y,z); title('y=x^3','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4e.png')
% f) y=e^x
figure;
[x,z] = meshgrid(-1:.1:1); y = exp(x);
surf(x,y,z); title('y=e^x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4f.png')
% g) y=lnx
figure;
[x,z] = meshgrid(0:.05:1); y = log(x); % Note log(x) = ln(x)
surf(x,y,z); title('y=lnx','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4g.png')
% h) y=sqrt(x)
figure;
[x,z] = meshgrid(0:.05:1); y = sqrt(x);
surf(x,y,z); title('y=x^{1/2}','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4h.png')
% i) x=y^2
figure;
[y,z] = meshgrid(-1:.1:1); x = y.^2;
surf(x,y,z); title('x=y^2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4i.png')
% j) y=1/x
figure;
[x,z] = meshgrid(-1:.1:1); y = 1./x;
surf(x,y,z); title('y=1/x','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4j.png')
% k) x^2+y^2+z^2=4
figure;
[r,theta] = meshgrid(0:.1:2,0:.1:2*pi); % Polar coords
x = r.*cos(theta); y = r.*sin(theta);
surf(x,y,real(sqrt(4-x.^2-y.^2)));hold on;
surf(x,y,-real(sqrt(4-x.^2-y.^2))); title('x^2+y^2+z^2=4','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4k.png')
% l) x+2y+3z=6
figure;
[x,y] = meshgrid(-1:.1:1);
z = (1/3)*(6-2*y-x);
surf(x,y,z); title('x+2y+3z=6','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4l.png')
% m) z=x^2+y^2
figure;
[x,y] = meshgrid(-1:.1:1);
z = x.^2+y.^2;
surf(x,y,z); title('z=x^2+y^2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4m.png')
% n) z^2=x^2+y^2
figure;
[r,theta] = meshgrid(0:.1:1,0:.1:2.1*pi); % Polar coords
x = r.*cos(theta); y = r.*sin(theta);
surf(x,y,real(sqrt(x.^2+y.^2)));hold on;
surf(x,y,-real(sqrt(x.^2+y.^2))); title('z^2=x^2+y^2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4n.png')
% o) z^2=x^2+y^2-1
figure;
[r,theta] = meshgrid(0:.1:3,0:.1:2.1*pi); % Polar coords
x = r.*cos(theta); y = r.*sin(theta);
surf(x,y,real(sqrt(x.^2+y.^2-1)));hold on;
surf(x,y,-real(sqrt(x.^2+y.^2-1))); title('z^2=x^2+y^2-1','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4o.png')
% p) z^2=x^2+y^2+1
figure;
[r,theta] = meshgrid(0:.1:4,0:.1:2.1*pi); % Polar coords
x = r.*cos(theta); y = r.*sin(theta);
surf(x,y,real(sqrt(x.^2+y.^2+1)));hold on;
surf(x,y,-real(sqrt(x.^2+y.^2+1))); title('z^2=x^2+y^2+1','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4p.png')
% q) z=y^2-x^2
figure;
[x,y] = meshgrid(-1:.1:1);
z = y.^2-x.^2;
surf(x,y,z); title('z=y^2-x^2','Fontsize',22);
xlabel('x','Fontsize',16);ylabel('y','Fontsize',16);
saveas(gcf,'4q.png')


% ----------------------------------------------------
% Problem 5 - Revolve around axes
% ----------------------------------------------------
% a)i) y=ln(x-1)
figure;
[x,t] = meshgrid(1.1:.1:3,0:.1:2.1*pi);
y = log(x-1).*sin(t);
z = log(x-1).*cos(t);
surf(x,y,z); hold on;
[x,~] = meshgrid(1.1:.1:3);
surf(x,log(x-1),zeros(size(x))); 
title('Problem 5a','Fontsize',18);xlabel('x','Fontsize',16);
ylabel('y','Fontsize',16);zlabel('z','Fontsize',16);

% a)ii) x=e^y+1
figure;
[y,t] = meshgrid(1.1:.1:3,0:.1:2.1*pi);
x = (exp(y)+1).*sin(t);
z = (exp(y)+1).*cos(t);
surf(x,y,z); hold on;
[y,~] = meshgrid(1.1:.1:3);
surf(exp(y)+1,y,zeros(size(y))); 
title('Problem 5a','Fontsize',18);xlabel('x','Fontsize',16);
ylabel('y','Fontsize',16);zlabel('z','Fontsize',16);

% b)i) z=sin(x)
figure;
[x,t] = meshgrid(1.1:.1:3,0:.1:2.1*pi);
y = sin(x).*sin(t);
z = sin(x).*cos(t);
surf(x,y,z); hold on;
[x,~] = meshgrid(1.1:.1:3);
surf(x,zeros(size(x)),sin(x)); 
title('Problem 5b i','Fontsize',18);xlabel('x','Fontsize',16);
ylabel('y','Fontsize',16);zlabel('z','Fontsize',16);

% b)ii) x=acos(z)
figure;
[y,t] = meshgrid(1.1:.1:3,0:.1:2.1*pi);
x = (exp(y)+1).*sin(t);
z = (exp(y)+1).*cos(t);
surf(x,y,z); hold on;
[y,~] = meshgrid(1.1:.1:3);
surf(exp(y)+1,y,zeros(size(y))); 
title('Problem 5a','Fontsize',18);xlabel('x','Fontsize',16);
ylabel('y','Fontsize',16);zlabel('z','Fontsize',16);
