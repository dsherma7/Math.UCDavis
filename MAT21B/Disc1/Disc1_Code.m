% Problem 3
x = 0:.1:3;
y = @(x) (1/2)*x.^(3/2);
min_val = 4/3;
figure;
plot(x,y(x),'LineWidth',4); hold on;
plot(2,0,'r*','MarkerSize',5);
plot(min_val,y(min_val),'r*','MarkerSize',5);
plot([2 min_val],[0 y(min_val)],'g--','LineWidth',3);
xlabel('x','FontSize',14);
ylabel('y','FontSize',14);
title('Problem 3','FontSize',14);

% Problem 4
x = -2:.01:2;
y = @(x) (1./x)+(1./x.^2);
plot(x,y(x),'LineWidth',4);
xlabel('x','FontSize',14);
ylabel('y','FontSize',14);
title('Problem 4','FontSize',14);hold on;
axis([-2,2,-0.5,4]);
plot([0 0],[-0.5 4],'--','LineWidth',3);