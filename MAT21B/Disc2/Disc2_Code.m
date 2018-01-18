% Problem 1
close all; clc; figure;
e = exp(1);
x = 0:.1:e;
f = @(x) log(x+1);
plot(x,f(x),'b--','LineWidth',2); hold on;
sub = 5;
p = 0:e/sub:e;

for i = 1:length(p)-1
    rectangle('Position',[p(i) 0 p(i+1)-p(i) f(p(i))],'FaceColor',[0.8 0 0.1 0.2],'EdgeColor','r')
end

xlabel('x','FontSize',14);
ylabel('y','FontSize',14);
title('f(x) = log(1+x) on [0,e]','FontSize',14);

% Problem 2
close all; clc; figure;
x = 0:.1:pi;
f = @(x) sin(x);

subplot(1,2,1);
plot(x,f(x),'b--','LineWidth',2); hold on;
sub = 6;
p = 0:pi/(2*sub):pi;

for i = 1:(length(p)-1)/2
    int = p(2*i-1:2*i+1);
    plot(int,f(int),'ro','MarkerSize',7);
    fill([int(1) int int(end)],[0 f(int) 0],'c', 'FaceAlpha',.1);    
end

xlim([x(1) x(end)]); title("Simpson's Rule",'FontSize',20);
xlabel('x','FontSize',20); ylabel('y','FontSize',20);

subplot(1,2,2);
plot(x,f(x),'b--','LineWidth',2); hold on;
for i = 1:(length(p)-1)/2
    int = p(2*i-1:2*i+1);    
    fill([int(1) int(1) int(end) int(end)],[0 f(int(1)) f(int(end)) 0],'r', 'FaceAlpha',.1);
end

xlim([x(1) x(end)]); title('Trapezoid Rule','FontSize',20);
xlabel('x','FontSize',20); ylabel('y','FontSize',20);
