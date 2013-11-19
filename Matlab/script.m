%% Grundeinstellungen
x0 = 0;


%% Plotten
figure;
hold on;
grid on;
plot(x_orig.time,x_orig.signals(1).values(:,1),'b');
plot(x.time,x.signals(1).values(:,1),'r');

legend('echt','approximiert');