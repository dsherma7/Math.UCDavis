% Problem 1
close all; clc;
x = 0:.1:2;
f = @(x) exp(x)+2;
plot(x,f(x)); hold on;
plot([0 2],[3 3]);
axis([0 2 0 10])
xlabel("x","Fontsize",18)
ylabel("y","Fontsize",18)
title("y=e^x+2","Fontsize",20)

% Problem 2
close all; clc
x = 1:.01:2
f = @(x) -x.^2+4*x-2;
plot(x,f(x)); hold on;
plot(x,x);
xlabel("x","Fontsize",18)
ylabel("y","Fontsize",18)
title("Region","Fontsize",20)
legend({"y(x)","y=x"})

clc; close all;
x = 1:.01:2;
f = @(x) -x.^2+4*x+sqrt(x.^(17)+1)+2016;
g = @(x) x+sqrt(x.^(17)+1)+2018;
subplot(1,2,1);
plot(x,f(x),'r-','Linewidth',1); hold on;
plot(x,g(x),'b--','Linewidth',5);
xlabel("x","Fontsize",18)
ylabel("y","Fontsize",18)
title("Region","Fontsize",20)
legend({"y_{2016}","y_{2018}"})

subplot(1,2,2);
h = @(x) f(x)-g(x);
plot(x,h(x))
xlabel("x","Fontsize",18)
ylabel("y","Fontsize",18)
title("Difference","Fontsize",20)


% Problem 2 b2
x = 0:.01:1.2;
f = @(x) -x.^2+4*x-2;
g = @(x) 2-x;
plot(x,f(x),'r-','Linewidth',1); hold on;
plot(x,g(x),'b--','Linewidth',5);
xlabel("x","Fontsize",18)
ylabel("y","Fontsize",18)
title("Region","Fontsize",20)
legend({"y_{2016}","y_{2018}"})




