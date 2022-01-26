clc;
clear;
T1=[0.7
1.2
2.1
3.2
4.7
5.5
8
10
11.8
14
0.7
1.5
2.1
3.2
4
5.8
7
9.2
10.2
12.8
0.9
2.1
3.115
4.2
5.1
6.3
7.7
9.2
11.3
13
14.3
0.9
1.5
2.1
3
4
5.6
7.1
8.7
9.8
11
12
13.8
15.1
16.6
0.6
1.9
3.1
4.1
5.6
7.3
8.3
10
12.2
13.1
14.4
16
17.4
19
0.62
1.1
2.1
3.148
4.1
5.5
6.18
7.55
9.2
11
13.1
14.5
16.4
18
19.1
20
21
0.66
2.94
4.1
6.2
8
10.3
12.2
13.5
15.1
16.4
18.5
19.5
20
21.4
0.6
1.1
2.1
3.3
4.8
6.2
8.1
10
11.1
13.2
14.2
15.2
17.4
18.8
20
21

];
T = T1';
N1=[140
140
140
140
140
140
140
140
140
140
120
120
120
120
120
120
120
120
120
120
100
100
100
100
100
100
100
100
100
100
100
80
80
80
80
80
80
80
80
80
80
80
80
80
80
60
60
60
60
60
60
60
60
60
60
60
60
60
60
40
40
40
40
40
40
40
40
40
40
40
40
40
40
40
40
40
30
30
30
30
30
30
30
30
30
30
30
30
30
30
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20


];
N = N1';
Pout1=[0.007
0.012
0.03
0.045
0.065
0.079
0.13
0.15
0.17
0.19
0.008
0.014
0.022
0.039
0.052
0.072
0.085
0.11
0.13
0.161
0.0096
0.022
0.036
0.046
0.053
0.066
0.08
0.095
0.12
0.138
0.155
0.007
0.012
0.017
0.025
0.034
0.045
0.06
0.072
0.082
0.094
0.103
0.118
0.128
0.141
0.0042
0.012
0.018
0.0269
0.037
0.047
0.054
0.065
0.079
0.082
0.093
0.105
0.113
0.122
0.0022
0.00464
0.00938
0.0134
0.0177
0.022
0.0268
0.033
0.039
0.048
0.056
0.062
0.07
0.076
0.08
0.085
0.09
0.0023
0.0096
0.0133
0.019
0.025
0.033
0.039
0.0446
0.049
0.053
0.06
0.063
0.067
0.069
0.0012
0.0021
0.0046
0.007
0.01
0.0135
0.0174
0.022
0.024
0.028
0.031
0.035
0.039
0.041
0.047
0.049

]*1000;
Pout = Pout1';
U1=[36
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
I1=[0.6
0.7
1.1
1.6
2.3
2.7
4.4
5
5.6
6.5
0.5
0.7
1
1.3
1.8
2.6
3.2
4.2
5
6.2
0.4
0.8
1.2
1.6
1.9
2.4
3
3.6
4.6
5.5
6.3
0.4
0.6
0.7
1
1.3
1.7
2.3
2.8
3.2
3.8
4.2
5.1
5.6
6.4
0.2
0.5
0.7
1
1.4
1.8
2.1
2.6
3.2
3.6
4.2
4.8
5.4
6.1
0.1
0.2
0.4
0.5
0.7
0.9
1.1
1.4
1.7
2.3
2.9
3.4
4
4.6
5.2
5.7
6.3
0.1
0.4
0.6
0.9
1.2
1.7
2.2
2.6
3
3.5
4.3
4.9
5.4
6
0.1
0.1
0.2
0.3
0.5
0.7
1
1.3
1.6
2
2.3
2.6
3.4
3.9
4.7
5


];
I = I1';
Pin=U.*I;
Eff=Pout./Pin;
%pkg load io
% Eff_init = xlsread('Losses','Efficiency','A1:AI41'); % �����Ч��
% Torque_init = xlsread('Losses','Torque','A1:AI41');     % ת��

%%%%%%%%%%%%%%%%%% ����ת�ء�ת������ %%%%%%%%%%%%%%%%%%
[x,y]=size(N);
Speed_max = max(N);                            % ת����ߵ���Ҫ�Լ��ֶ�����
Speed_min = min(N); 
% Speed_step = (Speed_max-Speed_min)/(y-1);    % ת�ٲ���

Torque_max = max(T);
Torque_min = min(T);
% Torque_step = (Torque_max-Torque_min)/(y-1); % ת�ز���
% n1 = [Speed_min:Speed_step:Speed_max];
% T1 = [Torque_min:Torque_step:Torque_max];
% n1 = [Speed_min:20:Speed_max];
% T1 = [Torque_min:20:Torque_max];
n1 = linspace(Speed_min,Speed_max,100);
T1 = linspace(Torque_min,Torque_max,100);

%%%%%% �������ת���������Ǹ�״������Ϊ�պ�ÿ��ת�������������棬���Ҫ�������߾Ͳ�Ҫ������������
[n1,T1]=meshgrid(n1,T1);%�м����ֵ����������϶����ֹ����ȫ��ͼ��
figure(1);
Eff1 = griddata(N,T,Eff,n1,T1);
pcolor(n1,T1,Eff1);
shading interp;
hold on;
colorbar;
caxis([0,1.0])
[C,h] = contourf(n1,T1,Eff1,[0.15,0.2,0.25,0.3,0.35,0.40,0.45,0.50,0.55,0.60,0.65,0.70,0.72,0.77,0.85]);
A = xlabel('speed(RPM)');
B = ylabel('Torque(NM)');
set (A,'Fontangle','normal','FontName','����','FontSize',12);
set (B,'Fontangle','normal','FontName','����','FontSize',12);
set(findobj('FontSize',10),'FontSize',12);
clabel(C,h,'fontsize',10,'color','k');
title("8118-850 Efficiency Map");










