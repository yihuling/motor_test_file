clc;
clear;
N1 = [0.9
1.99
3.515
6.1
8.4


    ]';
N2 = [1.6
2.22
4.5
6.899
9.6352


    ]';
N3 = [1.915
3
4.484
7.305
10.161

    ]';
N4 = [1.698
3.012
5.476
8.077
10.99


    ]';
N5 = [2.169
3.186
5.963
8.53
11.622


    ]';
N6 = [2.618
4.554
7.393
9.7
12.7


    ]';
N7 = [2.8
4.6
8.186
10.644
13.9

    ]';
N8 = [3.11
5.88
8.97
11.35
15.3


    ]';
N9 = [3.772
6.357
10.425
13.01
16.3

    ]';

N10 = [4.521
7.285
12.62
14
16.6

    ]';
N11 = [5.9
8.54
12.069
15.8
16.2

    
]';
N12 = [4.151
7.315
10.2
14.373
16.579

    ]';
N13 = [
    4.716
9.367
12.2
14.4
16.8
]';
N14 = [3.348
6.476
10.59
13.5
15.8

    ]';
N15 = [4.24
7.426
9.5
12.1
15.1


    ]';
I1 = [1.7
2.4
4
6.7
9.3


    ]';
I2 = [1.8
2.5
4.4
6.7
9.7


    ]';
I3 = [2
2.8
4.2
6.7
9.5


    ]';
I4 = [1.9
2.7
4.7
6.8
9.5


    ]';
I5 = [2
2.6
4.7
6.8
9.5


    ]';
I6 = [2
3.2
5
7
9.6


    ]';
I7 = [1.9
2.9
5.2
7
9.7

    ]';
I8 = [1.9
3.2
5.2
6.8
9.6

    ]';
I9 = [1.9
3.1
5.3
6.9
9.5


    ]';
I10 = [1.9
3
5.8
6.7
8.7


    ]';
I11 = [2
3
4.8
6.9
7.3


    ]';
I12 = [1.1
2
3
4.8
6.1


    ]';
I13 = [0.9
2.2
3.1
4.1
5.1


    ]';
I14 = [0.5
1.1
2.1
3.1
4.2

    ]';
I15 = [0.5
1
1.5
2.3
3.2

    ]';
figure;
hold all;
% set(fig,'position',get(0,'ScreenSize'));
subplot(2,1,1);
hold all;
plot(I1,N1,'-*b','LineWidth',2);
plot(I2,N2,'-*r','LineWidth',2);
plot(I3,N3,'-*y','LineWidth',2);
plot(I4,N4,'-p','LineWidth',2);
plot(I5,N5,'-*k','LineWidth',2);
plot(I6,N6,'-*m','LineWidth',2);
plot(I7,N7,'-*g','LineWidth',2);
plot(I8,N8,'-*c','LineWidth',2);
plot(I9,N9,'-ob','LineWidth',2);
plot(I10,N10,'-or','LineWidth',2);
plot(I11,N11,'-oy','LineWidth',2);
plot(I12,N12,'-or','LineWidth',2);
plot(I13,N13,'-ok','LineWidth',2);
plot(I14,N14,'-om','LineWidth',2);
plot(I15,N15,'-oc','LineWidth',2);
legend('286RPM','260RPM','240RPM','220RPM','200RPM','180RPM','160RPM','140RPM','120RPM','100RPM','80RPM','60RPM','40RPM','30RPM','20RPM');
title('8118-1800');
xlabel('Current(A)');
ylabel('Toruqe(NM)');

NN1 = [0.7
1.2
2.1
3.2
4.7
5.5
8
10
11.8
14
15

    ]';
NN2 = [0.7
1.5
2.1
3.2
4
5.8
7
9.2
10.2
12.8
14
15.9
17
18

    ]';
NN3 = [0.9
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
15.3
16
17.7
19.6

    ]';
NN4 = [0.9
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
17.6
18.7
19.6
20.7

    ]';
NN5 = [0.6
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
20
21

    ]';
NN6 = [0.62
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

    ]';
NN7 = [0.66
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

    ]';
NN8 = [0.6
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

    ]';
II1 = [0.6
0.7
1.1
1.6
2.3
2.7
4.4
5
5.6
6.5
7.3

    ]';
II2 = [0.5
0.7
1
1.3
1.8
2.6
3.2
4.2
5
6.2
7.2
8.3
9.3
9.8

    ]';
II3 = [0.4
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
6.8
7.7
8.6
9.8

    ]';
II4 = [0.4
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
7.1
7.6
8.4
9

    ]';
II5 = [0.2
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
6.8
7.5

    ]';
II6 = [0.1
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

    ]';
II7 = [0.1
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

    ]';
II8 = [0.1
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
    ]';
subplot(2,1,2);
hold all;
% set(fig,'position',get(0,'ScreenSize'));
plot(II1,NN1,'-*b','LineWidth',2);
plot(II2,NN2,'-*r','LineWidth',2);
plot(II3,NN3,'-*y','LineWidth',2);
plot(II4,NN4,'-p','LineWidth',2);
plot(II5,NN5,'-*k','LineWidth',2);
plot(II6,NN6,'-*m','LineWidth',2);
plot(II7,NN7,'-*g','LineWidth',2);
plot(II8,NN8,'-*c','LineWidth',2);
legend('140RPM','120RPM','100RPM','80RPM','60RPM','40RPM','30RPM','20RPM','postion');
title('8118-850');
xlabel('Current(A)');
ylabel('Toruqe(NM)');
subplot(2,1,2);


