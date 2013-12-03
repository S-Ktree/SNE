%% Grundeinstellungen
x0 = 1;

%% simulieren:
sim('Beispielmodell');

%% Plotten
figure;
hold on;
grid on;
plot(x.time,x.signals(1).values(:,1),'b');

%% Exportieren:
matlab2tikz('euler_ex_vortrag.tex');

%% Fuer Vortrag:
