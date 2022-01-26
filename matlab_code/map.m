clc;
clear;
I1 = [ 0.7 3.2 6.3 8.7 12.2 14.5 18.5 21];
N1 = [ 140 120 100 80 60 40 30 20];
T1 = [ 0.6 1.3 2.4 2.8 3.2 3.4 4.3 5] ;
% 
% I2 = [ 0.9 1.6 1.915 3.012 3.186 4.554 4.6 5.88 6.357 7.287 8.54 10.2 12.2 13.5 15.1];
% N2 = [ 286 260 240 220 200 180 160 140 120 100 80 60 40 30 20] ;
% T2 = [ 1.7 1.8 2 2.7 2.8 3.2 2.9 3.2 3.1 3 3 3 3.1 3.1 3.2]; 
Tfit = polyfit(I1,T1,3);
Nfit = polyfit(I1,N1,3);
TT = polyval(Tfit,I1);
NN = polyval(Nfit,I1);

% Tfit2 = polyfit(I2,T2,3);
% Nfit2 = polyfit(I2,N2,3);
% TT2 = polyval(Tfit2,I2);
% NN2 = polyval(Nfit2,I2);
% figure;
% hold all;
% yyaxis left;
% ylabel('Torque(NM)');
% plot(I,T,'*',I,TT,'b-');
% 
% yyaxis right;
% ylabel('Speed(RPM)');
% plot(I,N,'*',I,NN,'r-');
% 
% title('8118-850-Current Vs Torque Vs Speed');
% yyaxis left;
% ylabel('Torque(NM)');
% 
% yyaxis right;
% ylabel('Speed(RPM)');
figure;
hold all;
yyaxis left;
ylabel('Current(A)');
plot(I1,T1,'-*b','LineWidth',1);

yyaxis right;
ylabel('Speed(RPM)');
plot(I1,N1,'-*r','LineWidth',1);

title('8118-850-Current Vs Torque Vs Speed');
xlabel('Torque(NM)');
yyaxis left;
ylabel('Current(A)');

yyaxis right;
ylabel('Speed(RPM)');
legend('Torque-Current','Torque-Speed');
xlim([0,22]);
