%%%%%%parameters%%%%%%%%%%
T1=[
0.9
1.6
1.915
3.012
3.186
4.554
4.6
5.88
6.357
7.285
8.54
10.2
12.2
13.5
15.1

];
T = T1';
N1=[
286
260
240
220
200
180
160
140
120
100
80
60
40
30
20

];
N = N1';
Pout1=[
0.031
0.039
0.041
0.067
0.067
0.087
0.078
0.083
0.084
0.076
0.073
0.064
0.05
0.051
0.034

]*1000;
Pout = Pout1';
U1 = [
36
36
36
36
36
36
36
36
36
36
36
36
36
36
36

];
U = U1';
I1=[
1.7
1.8
2.0
2.7
2.6
3.2
2.9
3.2
3.1
3
3
3
3.1
3.1
3.2


];
I = I1';
Pin=U.*I;
Eff=Pout./Pin;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%curve fitting%%%%%%%
%%%%%T-N%%%%%%%%%
Nplot = polyfit(T,N,3);
NN = polyval(Nplot,T);
%%%%%%%%%%%%%%%%%
%%%%%%%T-Pout%%%%
Poutplot = polyfit(T,Pout,3);
PPout = polyval(Poutplot,T);
%%%%%%%%%%%%%%%%%
%%%%%%%T-I%%%%%%%
Iplot = polyfit(T,I,3);
II = polyval(Iplot,T);
%%%%%%%%%%%%%%%%%
%%%%%%%T-Pin%%%%%
Pinplot = polyfit(T,Pin,3);
PPin = polyval(Pinplot,T);
%%%%%%%%%%%%%%%%%
%%%%%%%T-Eff%%%%%
Eplot = polyfit(T,Eff,3);
EE = polyval(Eplot,T);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Plot%%%%%%%%%%%%%%
figure;
subplot(2,3,1);
plot(T,N,'*',T,NN,'g-');
title('T-N relationship');
xlabel('T(NM)');
ylabel('N(RPM)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2);
plot(T,Pout,'*',T,PPout,'r-');
title('T-Pout relationship');
xlabel('T(NM)');
ylabel('Pout(W)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3);
plot(T,I,'*',T,II,'y-');
title('T-I relationship');
xlabel('T(NM)');
ylabel('I(A)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4);
plot(T,Pin,'*',T,PPin,'b-');
title('T-Pin relationship');
xlabel('T(NM)');
ylabel('Pin(W)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5);
plot(T,Eff,'*',T,EE,'p-');
title('T-Eff relationship');
ylim([0,1]);
xlabel('T(NM)');
ylabel('Efficiency');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6);
plot(T,U,'*',T,U,'b-');
title('T-U relationship');
xlabel('T(NM)');
ylabel('U(V)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
suptitle('Motor 8118-1800-6:1 constant speed test');
