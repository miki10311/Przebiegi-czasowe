
clear all;
close all;

u0=0;
du=1;

x0=0;
x10=0;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY < 0, a=4, b=50%

k=1;
a=1;
b=4;
c=50;

sim('odpskok',3)

figure(5);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('Skok')
title('Zadanie 2')
xlabel('Czas [s]')
ylabel('Wartości')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=[0.46 1.38 2.26];
y=[0.02792 0.02124 0.02018];


