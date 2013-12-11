%% Grundeinstellungen
x0 = 1;

%% simulieren:
% sim('Beispielmodell');

%% Plotten
figure;
hold on;
grid on;
plot(x_orig.time,x_orig.signals(1).values(:,1),'k--');
% plot(x_01.time,x_01.signals(1).values(:,1),'c');
% plot(x_05.time,x_05.signals(1).values(:,1),'g');
% plot(x_1.time,x_1.signals(1).values(:,1),'b');
% plot(x_2.time,x_2.signals(1).values(:,1),'r');
% plot(x_21.time,x_21.signals(1).values(:,1),'m');
plot(x.time,x.signals(1).values(:,1),'r');


legend('Vergleich','Adaption');
%% Exportieren:
%matlab2tikz('euler_ex.tex');
% matlab2tikz('runge_kutta.tex');
matlab2tikz('heun.tex');

%% Fuer Vortrag:
