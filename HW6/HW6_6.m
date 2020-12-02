clear;clc;close all;
set(0,'defaultlinelinewidth',2)
set(0,'defaultaxeslinewidth',2);
set(0,'defaultaxesfontsize',24);
set(0,'defaulttextfontsize',24);
set(0,'DefaultLineMarkerSize',24);
set(0,'Defaultaxesfontname','Times New Roman');

epsilon=0.4;
epsilon0=0;
x=-7:0.01:7;
y=(1-epsilon/pi/pi)*cos(pi*x)+epsilon/pi/pi+(-1/(pi*pi*pi-pi))*sin(pi*x)+sin(x)/(pi*pi-1);
y0=(1-epsilon0/pi/pi)*cos(pi*x)+epsilon0/pi/pi+(-1/(pi*pi*pi-pi))*sin(pi*x)+sin(x)/(pi*pi-1);
% 
figure;
plot(x,y); 
hold on
plot(x,y0);
hold on
legend('$\varepsilon=0.4$','$\varepsilon=0$','interpreter','latex');
set(gcf,'unit','centimeters','position',[20 20 20 20])

xlabel('$x$','interpreter','latex');
ylabel('$y$','interpreter','latex');

saveas(gcf,'1','epsc')