%% Untersuchung der Stabilitätsgebiete:

%% 1. Euler-Explizit:
clear all;
renum=1;
imnum=1;

re = -4:0.01:2;
im = -6:0.01:6;
%[X,Y]=meshgrid(re,im);

% eulerex(1201,601)=0;
% eulerim(1201,601)=0;
% trapez(1201,601)=0;
% heun(1201,601)=0;
% RK(1201,601)=0;
for real = -4:0.01:2
    for imagin = -6:0.01:6;
        z=real+1i*imagin;
        if (abs(1+z))<1
           eulerex(imnum,renum)= 1;
       else
           eulerex(imnum,renum)=-0.1;
        end
        if (abs(1-z))>1
           eulerim(imnum,renum)= 1;
       else
           eulerim(imnum,renum)=-0.1;
        end
       if (abs((2+z)/(2-z)))<1
           trapez(imnum,renum)= 1;
       else
           trapez(imnum,renum)=-0.1;
        end
       if (abs(1+z+1/2*z^2))<1
           heun(imnum,renum)= 1;
       else
           heun(imnum,renum)=-0.1;
       end
       if (abs(1+z+1/2*z^2+1/6*z^3+1/24*z^4))<1
           RK(imnum,renum)= 1;
       else
           RK(imnum,renum)=-0.1;
       end
       imnum=imnum+1;
    end
    imnum=1;
    renum=renum+1;
end 
%        

%% Plotten
close all;
[X,Y]=meshgrid(re,im);

figure;
hold on;
axis equal;
axis([-4 2 -4 4]);
% conv2 irgendwie verwenden aber herausfinden wie!!??

[C,h]=contour(X,Y,eulerex,1,'k--','linewidth',2,'LineStyle','-','LevelStep',2.0);
contour(X,Y,eulerim,'r--','linewidth',2,'LineStyle','-','LevelStep',2.0);
contour(X,Y,trapez,'g--','linewidth',2,'LineStyle','-','LevelStep',2.0);
contour(X,Y,heun,'b--','linewidth',2,'LineStyle','-','LevelStep',2.0);
contour(X,Y,RK,'m--','linewidth',2,'LineStyle','-','LevelStep',2.0);
grid on;
colormap(gray);

%% exportieren
matlab2tikz('stabis.tex');

%% Gridfit testen: SCHEIßE!
