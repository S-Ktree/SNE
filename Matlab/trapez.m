function [ x ] = trapez(T,x0,Tend)
x(1)=x0; %Anfangswert

for i = 1:1:Tend/T
	x(i+1)=x(i)*(1-T/2)/(1+T/2);	
end
end

