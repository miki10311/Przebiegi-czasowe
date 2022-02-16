%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY >0, B=1%
clear all;
close all;

u0=0;
du=1;

k=1;
a=1;
b=[3,4,5,10];
c=1;

x0=0;
x10=0;
sim('odpskok',30)

figure(1);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('a=3','a=4','a=5','a=10')
title('Odpowiedź skokowa, delta > 0, b=1')
xlabel('Czas [s]')
ylabel('Wartości')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY >0, A=1%

k=1;
a=1;
b=10;
c=[3,4,5,10];

sim('odpskok',20)

figure(2);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('b=3','b=4','b=5','b=10')
title('Odpowiedź skokowa, delta > 0, a=10')
xlabel('Czas [s]')
ylabel('Wartości')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY =0%

k=1;
a=1;
b=[2,4,6];
c=[1,4,9];

sim('odpskok',10)

figure(3);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('a=2, b=1','a=4, b=4','a=6, b=9')
title('Odpowiedź skokowa, delta = 0')
xlabel('Czas [s]')
ylabel('Wartości')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY < 0, a=1%

k=1;
a=1;
b=1;
c=[2,3,4,5,8,11,50];

sim('odpskok',10)

figure(4);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('b=2','b=3','b=4','b=5','b=8','b=11','b=50')
title('Odpowiedź skokowa, delta < 0, a=1')
xlabel('Czas [s]')
ylabel('Wartości')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ODP. SKOKOWA DLA DELTY < 0, b=50%

k=1;
a=1;
b=[1,2,3,4,5,8,11];
c=50;

sim('odpskok',10)

figure(5);
hold on;
grid on;


plot(ans.tout, ans.x);
legend('a=1','a=2','a=3','a=4','a=5','a=8','a=11')
title('Odpowiedź skokowa, delta < 0, b=50')
xlabel('Czas [s]')
ylabel('Wartości')
