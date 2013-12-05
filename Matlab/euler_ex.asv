%% Grundeinstellungen
x0 = 1;

%% simulieren:
% sim('Beispielmodell');

%% Plotten
figure;
hold on;
grid on;
plot(x_orig.time,x_orig.signals(1).values(:,1),'k--');
plot(x_01.time,x_01.signals(1).values(:,1),'c');
plot(x_05.time,x_05.signals(1).values(:,1),'g');
plot(x_1.time,x_1.signals(1).values(:,1),'b');
plot(x_2.time,x_2.signals(1).values(:,1),'r');
plot(x_21.time,x_21.signals(1).values(:,1),'m');

legend('Vergleich','T=0.1/l','T=0.5/l','T=1/l','T=2/l','T=2.1/l');
%% Exportieren:
matlab2tikz('euler_ex.tex');

%% Fuer Vortrag:
