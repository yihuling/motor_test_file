%%%%%%parameters%%%%%%%%%%
T1=[0.21
1.3
2.5
2.9
3.6
4.3
5.2
6.4
7.5
8.2
9.8
10.2
16.2
22
23
];
T = T1';
N1=[141
141
140
139
139
138
137
135
134
133
131
130
120
110
100
];
N = N1';
Pout1=[0.016
0.018
0.032
0.04
0.05
0.057
0.07
0.083
0.09
0.1
0.13
0.13
0.22
0.25
0.25
]*1000;
Pout = Pout1';
U=[36 36 36 36 36 36 36 36 36	36	36	36 36	36	36	36	36	36	36	36	36	36	36	36	36	36	36	36];
I1=[0.5
0.8
1
1.3
1.6
1.9
2.3
2.9
3.3
3.9
4.4
4.8
8.5
10.8
13.8
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
ylim([0,60]);
xlabel('T(NM)');
ylabel('N(RPM)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2);
plot(T,Pout,'*',T,PPout,'r-');
title('T-Pout relationship');
ylim([0,100]);
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
ylabel('Efficiency(%)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6);
plot(T,U,'*',T,U,'b-');
title('T-U relationship');
xlabel('T(NM)');
ylabel('U(V)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
suptitle('Motor 10015-850-16:1');
