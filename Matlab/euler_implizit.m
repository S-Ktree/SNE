%% Implizites Eulerverfahren: Fuer das betrachtete Beispielsystem
clear all;
x0=1; %Anfangswert
T=0.5;
t_1=0:0.5:12;
t_2=0:1:12;
t_3=0:2:12;
t_4=0:4:12;
t_5=0:2.1:8.4;

x_1 = euler_im(0.5,x0,12);
x_2 = euler_im(1,x0,12);
x_3 = euler_im(2,x0,12);
x_4 = euler_im(4,x0,12);
x_5 = euler_im(2.1,x0,8.4);

%% plotten

figure;
hold on;
grid on;
plot(t_1,x_1,'r');
plot(t_2,x_2,'g');
%plot(t_3,x_3,'b');
plot(t_4,x_4,'c');
plot(t_5,x_5);
legend('0.5','1','2','4','2.1');

%% Exportieren:
matlab2tikz('euler_im.tex');