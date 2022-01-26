time = (1:steps)*TIME_STEP/1000;
tmin=1;
tmax=steps;
%% Joint Angle
hfig1 = figure(1);
set(hfig1, 'position', get(0,'ScreenSize'));
subplot(2,2,1); 
hold on
plot(time(tmin:tmax),PSLFHR(tmin:tmax)/pi*180,'-b','LineWidth',2)
plot(time(tmin:tmax),PSLFHP(tmin:tmax)/pi*180,'-r','LineWidth',2)
plot(time(tmin:tmax),PSLFKP(tmin:tmax)/pi*180,'-g','LineWidth',2)
title('Front Left Leg Joint Angle','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,2); 
hold on
plot(time(tmin:tmax),PSRFHR(tmin:tmax)/pi*180,'-b','LineWidth',2)
plot(time(tmin:tmax),PSRFHP(tmin:tmax)/pi*180,'-r','LineWidth',2)
plot(time(tmin:tmax),PSRFKP(tmin:tmax)/pi*180,'-g','LineWidth',2)
title('Front Right Leg Joint Angle','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,3); 
hold on
plot(time(tmin:tmax),PSLBHR(tmin:tmax)/pi*180,'-b','LineWidth',2)
plot(time(tmin:tmax),PSLBHP(tmin:tmax)/pi*180,'-r','LineWidth',2)
plot(time(tmin:tmax),PSLBKP(tmin:tmax)/pi*180,'-g','LineWidth',2)
title('Back Left Leg Joint Angle','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,4); 
hold on
plot(time(tmin:tmax),PSRBHR(tmin:tmax)/pi*180,'-b','LineWidth',2)
plot(time(tmin:tmax),PSRBHP(tmin:tmax)/pi*180,'-r','LineWidth',2)
plot(time(tmin:tmax),PSRBKP(tmin:tmax)/pi*180,'-g','LineWidth',2)
title('Back Right Leg Joint Angle','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);
%% Joint Torque
k = (0.3/0.4)^4*0.5;% 等比例缩放因子

hfig2 = figure(2);
set(hfig2, 'position', get(0,'ScreenSize'));
subplot(2,2,1); 
hold on
plot(time(tmin:tmax),TQLFHR(tmin:tmax)*k,'-b','LineWidth',2)
plot(time(tmin:tmax),TQLFHP(tmin:tmax)*k,'-r','LineWidth',2)
plot(time(tmin:tmax),TQLFKP(tmin:tmax)*k,'-g','LineWidth',2)
title('Front Left Leg Joint Torque','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Torque [N*m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,2); 
hold on
plot(time(tmin:tmax),TQRFHR(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),TQRFHP(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),TQRFKP(tmin:tmax),'-g','LineWidth',2)
title('Front Right Leg Joint Torque','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Torque [N*m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,3); 
hold on
plot(time(tmin:tmax),TQLBHR(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),TQLBHP(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),TQLBKP(tmin:tmax),'-g','LineWidth',2)
title('Back Left Leg Joint Torque','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Torque [N*m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,4); 
hold on
plot(time(tmin:tmax),TQRBHR(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),TQRBHP(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),TQRBKP(tmin:tmax),'-g','LineWidth',2)
title('Back Right Leg Joint Torque','fontname','Times New Roman','fontsize',16);
legend('Hip Roll','Hip Pitch','Knee Pitch');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Torque [N*m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);
%% Foot Force
%考虑足端力传感器的布置，x方向为沿着小腿的方向，
%z方向在大腿和小腿确定的平面内垂直于小腿
%y方向垂直于大腿和小腿确定的平面

hfig3 = figure(3);
set(hfig3, 'position', get(0,'ScreenSize'));
subplot(2,2,1); 
hold on
plot(time(tmin:tmax),FSRLFX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FSRLFY(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),FSRLFZ(tmin:tmax),'-g','LineWidth',2)
title('Front Left Leg Foot Force','fontname','Times New Roman','fontsize',16);
legend('X','Y','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,2); 
hold on
plot(time(tmin:tmax),FSRRFX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FSRRFY(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),FSRRFZ(tmin:tmax),'-g','LineWidth',2)
title('Front Right Leg Foot Force','fontname','Times New Roman','fontsize',16);
legend('X','Y','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,3); 
hold on
plot(time(tmin:tmax),FSRLBX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FSRLBY(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),FSRLBZ(tmin:tmax),'-g','LineWidth',2)
title('Back Left Leg Foot Force','fontname','Times New Roman','fontsize',16);
legend('X','Y','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,4); 
hold on
plot(time(tmin:tmax),FSRRBX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FSRRBY(tmin:tmax),'-r','LineWidth',2)
plot(time(tmin:tmax),FSRRBZ(tmin:tmax),'-g','LineWidth',2)
title('Back Right Leg Foot Force','fontname','Times New Roman','fontsize',16);
legend('X','Y','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

%% BODY_POSITION&VELOCITY
% 仿真界面中的坐标系和数学模型里的坐标系不太一样，这里我做了一些换算
hfig4 = figure(4);
set(hfig4, 'position', get(0,'ScreenSize'));
subplot(2,3,1); 
hold on
plot(time(tmin:tmax),GPSBODYX(tmin:tmax),'-b','LineWidth',2)
title('X_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Position [m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,2); 
hold on
plot(time(tmin:tmax),-GPSBODYZ(tmin:tmax),'-r','LineWidth',2)
title('Y_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Position [m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,3); 
hold on
plot(time(tmin:tmax),GPSBODYY(tmin:tmax),'-g','LineWidth',2)
title('Z_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Position [m]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,4); 
hold on
plot(time(tmin:tmax),VELOCITYBODYX(tmin:tmax),'-b','LineWidth',2)
title('vX_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Velocity [m/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,5); 
hold on
plot(time(tmin:tmax),-VELOCITYBODYZ(tmin:tmax),'-r','LineWidth',2)
title('vY_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Velocity [m/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,6); 
hold on
plot(time(tmin:tmax),VELOCITYBODYY(tmin:tmax),'-g','LineWidth',2)
title('vZ_t','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Velocity [m/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

%% BODY_ANGLE&ANGLE_VELOCITY
% 仿真界面中的坐标系和数学模型里的坐标系不太一样，这里我做了一些换算
hfig5 = figure(5);
set(hfig5, 'position', get(0,'ScreenSize'));
subplot(2,3,1); 
hold on
plot(time(tmin:tmax),IMUBODYROLL(tmin:tmax)*deg,'-b','LineWidth',2)
title('Roll Angle','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,2); 
hold on
plot(time(tmin:tmax),-IMUBODYPITCH(tmin:tmax)*deg,'-r','LineWidth',2)
title('Pitch Angle','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,3); 
hold on
plot(time(tmin:tmax),IMUBODYYAW(tmin:tmax)*deg,'-g','LineWidth',2)
title('Yaw Angle','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle [°]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,4); 
hold on
plot(time(tmin:tmax),AVELOCITYBODYROLL(tmin:tmax)*deg,'-b','LineWidth',2)
title('Roll Velocity','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Angle Velocity [°/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,5); 
hold on
plot(time(tmin:tmax),-AVELOCITYBODYPITCH(tmin:tmax)*deg,'-r','LineWidth',2)
title('Pitch Velocity','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Velocity [°/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,3,6); 
hold on
plot(time(tmin:tmax),AVELOCITYBODYYAW(tmin:tmax)*deg,'-g','LineWidth',2)
title('Yaw Velocity','fontname','Times New Roman','fontsize',16);
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Velocity [°/s]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

%% Foot Force in world coordinate system
% 将足端力矩换算到世界坐标系下
% 这里为了简便，只分析了X和Z方向
hfig6 = figure(6);
set(hfig6, 'position', get(0,'ScreenSize'));
FFLFWX(tmin:tmax) = FSRLFZ(tmin:tmax).*cos(PSLFHP(tmin:tmax)+PSLFKP(tmin:tmax)) - FSRLFX(tmin:tmax).*sin(PSLFHP(tmin:tmax)+PSLFKP(tmin:tmax));
FFLFWZ(tmin:tmax) = FSRLFZ(tmin:tmax).*sin(PSLFHP(tmin:tmax)+PSLFKP(tmin:tmax)) + FSRLFX(tmin:tmax).*cos(PSLFHP(tmin:tmax)+PSLFKP(tmin:tmax));
FFRFWX(tmin:tmax) = FSRRFZ(tmin:tmax).*cos(PSRFHP(tmin:tmax)+PSRFKP(tmin:tmax)) - FSRRFX(tmin:tmax).*sin(PSRFHP(tmin:tmax)+PSRFKP(tmin:tmax));
FFRFWZ(tmin:tmax) = FSRRFZ(tmin:tmax).*sin(PSRFHP(tmin:tmax)+PSRFKP(tmin:tmax)) + FSRRFX(tmin:tmax).*cos(PSRFHP(tmin:tmax)+PSRFKP(tmin:tmax));
FFLBWX(tmin:tmax) = FSRLBZ(tmin:tmax).*cos(PSLBHP(tmin:tmax)+PSLBKP(tmin:tmax)) - FSRLBX(tmin:tmax).*sin(PSLBHP(tmin:tmax)+PSLBKP(tmin:tmax));
FFLBWZ(tmin:tmax) = FSRLBZ(tmin:tmax).*sin(PSLBHP(tmin:tmax)+PSLBKP(tmin:tmax)) + FSRLBX(tmin:tmax).*cos(PSLBHP(tmin:tmax)+PSLBKP(tmin:tmax));
FFRBWX(tmin:tmax) = FSRRBZ(tmin:tmax).*cos(PSRBHP(tmin:tmax)+PSRBKP(tmin:tmax)) - FSRRBX(tmin:tmax).*sin(PSRBHP(tmin:tmax)+PSRBKP(tmin:tmax));
FFRBWZ(tmin:tmax) = FSRRBZ(tmin:tmax).*sin(PSRBHP(tmin:tmax)+PSRBKP(tmin:tmax)) + FSRRBX(tmin:tmax).*cos(PSRBHP(tmin:tmax)+PSRBKP(tmin:tmax));

subplot(2,2,1); 
hold on
plot(time(tmin:tmax),FFLFWX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FFLFWZ(tmin:tmax),'-r','LineWidth',2)
title('Front Left Leg Foot Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
legend('X','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,2); 
hold on
plot(time(tmin:tmax),FFRFWX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FFRFWZ(tmin:tmax),'-r','LineWidth',2)
title('Front Right Leg Foot Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
legend('X','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,3); 
hold on
plot(time(tmin:tmax),FFLBWX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FFLBWZ(tmin:tmax),'-r','LineWidth',2)
title('Back Left Leg Foot Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
legend('X','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

subplot(2,2,4); 
hold on
plot(time(tmin:tmax),FFRBWX(tmin:tmax),'-b','LineWidth',2)
plot(time(tmin:tmax),FFRBWZ(tmin:tmax),'-r','LineWidth',2)
title('Back Right Leg Foot Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
legend('X','Z');
xlabel('time [s]','fontname','Times New Roman','fontsize',16);
ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
set(gca,'fontname','Times New Roman','fontsize',16);

% %% Joint Force in world coordinate system
% % 关节编号见图纸
% % 这里为了简便，只分析了X和Z方向
% L1 = 0.4;
% L2 = 0.4;
% L3 = 0.05;%定义连杆长度
% 
% LFF1x(tmin:tmax) =-(L2.*(FFLFWZ(tmin:tmax).*cos(PSLFKP(tmin:tmax)) - FFLFWX(tmin:tmax).*sin(PSLFKP(tmin:tmax)) - FFLFWZ(tmin:tmax).*cos(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) + FFLFWX(tmin:tmax).*sin(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax))))./(2.*L3.*sin(PSLFKP(tmin:tmax)));
% LFF2x(tmin:tmax) =(FFLFWZ(tmin:tmax).*L2.*cos(PSLFKP(tmin:tmax)) - FFLFWX(tmin:tmax).*L2.*sin(PSLFKP(tmin:tmax)) + 2.*FFLFWX(tmin:tmax).*L3.*sin(PSLFKP(tmin:tmax)) - FFLFWZ(tmin:tmax).*L2.*cos(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) + FFLFWX(tmin:tmax).*L2.*sin(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)))./(2.*L3.*sin(PSLFKP(tmin:tmax)));
% LFF1z(tmin:tmax) =(L2.*(FFLFWX(tmin:tmax).*cos(PSLFKP(tmin:tmax)) + FFLFWZ(tmin:tmax).*sin(PSLFKP(tmin:tmax)) + FFLFWX(tmin:tmax).*cos(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) + FFLFWZ(tmin:tmax).*sin(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax))))./(2.*L3.*sin(PSLFKP(tmin:tmax)));
% LFF2z(tmin:tmax) =-(FFLFWX(tmin:tmax).*L2.*cos(PSLFKP(tmin:tmax)) + FFLFWZ(tmin:tmax).*L2.*sin(PSLFKP(tmin:tmax)) - 2.*FFLFWZ(tmin:tmax).*L3.*sin(PSLFKP(tmin:tmax)) + FFLFWX(tmin:tmax).*L2.*cos(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) + FFLFWZ(tmin:tmax).*L2.*sin(2.*PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)))./(2.*L3.*sin(PSLFKP(tmin:tmax)));
% LFF3x(tmin:tmax) = LFF1x(tmin:tmax);
% LFF3z(tmin:tmax) = LFF1z(tmin:tmax);
% LFF5x(tmin:tmax) = LFF1x(tmin:tmax);
% LFF5z(tmin:tmax) = LFF1z(tmin:tmax);
% LFF4x(tmin:tmax) = LFF2x(tmin:tmax);
% LFF4z(tmin:tmax) = LFF2z(tmin:tmax);
% 
% hfig7 = figure(7);
% set(hfig7, 'position', get(0,'ScreenSize'));
% 
% subplot(5,1,1); 
% hold on
% plot(time(tmin:tmax),LFF1x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF1z(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Joint 1 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,2); 
% hold on
% plot(time(tmin:tmax),LFF2x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF2z(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Joint 2 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,3); 
% hold on
% plot(time(tmin:tmax),LFF3x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF3z(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Joint 3 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,4); 
% hold on
% plot(time(tmin:tmax),LFF4x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF4z(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Joint 4 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,5); 
% hold on
% plot(time(tmin:tmax),LFF5x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF5z(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Joint 5 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% RFF1x(tmin:tmax) =-(L2.*(FFRFWZ(tmin:tmax).*cos(PSRFKP(tmin:tmax)) - FFRFWX(tmin:tmax).*sin(PSRFKP(tmin:tmax)) - FFRFWZ(tmin:tmax).*cos(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) + FFRFWX(tmin:tmax).*sin(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax))))./(2.*L3.*sin(PSRFKP(tmin:tmax)));
% RFF2x(tmin:tmax) =(FFRFWZ(tmin:tmax).*L2.*cos(PSRFKP(tmin:tmax)) - FFRFWX(tmin:tmax).*L2.*sin(PSRFKP(tmin:tmax)) + 2.*FFRFWX(tmin:tmax).*L3.*sin(PSRFKP(tmin:tmax)) - FFRFWZ(tmin:tmax).*L2.*cos(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) + FFRFWX(tmin:tmax).*L2.*sin(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)))./(2.*L3.*sin(PSRFKP(tmin:tmax)));
% RFF1z(tmin:tmax) =(L2.*(FFRFWX(tmin:tmax).*cos(PSRFKP(tmin:tmax)) + FFRFWZ(tmin:tmax).*sin(PSRFKP(tmin:tmax)) + FFRFWX(tmin:tmax).*cos(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) + FFRFWZ(tmin:tmax).*sin(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax))))./(2.*L3.*sin(PSRFKP(tmin:tmax)));
% RFF2z(tmin:tmax) =-(FFRFWX(tmin:tmax).*L2.*cos(PSRFKP(tmin:tmax)) + FFRFWZ(tmin:tmax).*L2.*sin(PSRFKP(tmin:tmax)) - 2.*FFRFWZ(tmin:tmax).*L3.*sin(PSRFKP(tmin:tmax)) + FFRFWX(tmin:tmax).*L2.*cos(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) + FFRFWZ(tmin:tmax).*L2.*sin(2.*PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)))./(2.*L3.*sin(PSRFKP(tmin:tmax)));
% RFF3x(tmin:tmax) = RFF1x(tmin:tmax);
% RFF3z(tmin:tmax) = RFF1z(tmin:tmax);
% RFF5x(tmin:tmax) = RFF1x(tmin:tmax);
% RFF5z(tmin:tmax) = RFF1z(tmin:tmax);
% RFF4x(tmin:tmax) = RFF2x(tmin:tmax);
% RFF4z(tmin:tmax) = RFF2z(tmin:tmax);
% 
% hfig8 = figure(8);
% set(hfig8, 'position', get(0,'ScreenSize'));
% 
% subplot(5,1,1); 
% hold on
% plot(time(tmin:tmax),RFF1x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF1z(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Joint 1 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,2); 
% hold on
% plot(time(tmin:tmax),RFF2x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF2z(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Joint 2 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,3); 
% hold on
% plot(time(tmin:tmax),RFF3x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF3z(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Joint 3 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,4); 
% hold on
% plot(time(tmin:tmax),RFF4x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF4z(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Joint 4 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,5); 
% hold on
% plot(time(tmin:tmax),RFF5x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF5z(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Joint 5 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% LBF1x(tmin:tmax) =-(L2.*(FFLBWZ(tmin:tmax).*cos(PSLBKP(tmin:tmax)) - FFLBWX(tmin:tmax).*sin(PSLBKP(tmin:tmax)) - FFLBWZ(tmin:tmax).*cos(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) + FFLBWX(tmin:tmax).*sin(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax))))./(2.*L3.*sin(PSLBKP(tmin:tmax)));
% LBF2x(tmin:tmax) =(FFLBWZ(tmin:tmax).*L2.*cos(PSLBKP(tmin:tmax)) - FFLBWX(tmin:tmax).*L2.*sin(PSLBKP(tmin:tmax)) + 2.*FFLBWX(tmin:tmax).*L3.*sin(PSLBKP(tmin:tmax)) - FFLBWZ(tmin:tmax).*L2.*cos(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) + FFLBWX(tmin:tmax).*L2.*sin(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)))./(2.*L3.*sin(PSLBKP(tmin:tmax)));
% LBF1z(tmin:tmax) =(L2.*(FFLBWX(tmin:tmax).*cos(PSLBKP(tmin:tmax)) + FFLBWZ(tmin:tmax).*sin(PSLBKP(tmin:tmax)) + FFLBWX(tmin:tmax).*cos(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) + FFLBWZ(tmin:tmax).*sin(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax))))./(2.*L3.*sin(PSLBKP(tmin:tmax)));
% LBF2z(tmin:tmax) =-(FFLBWX(tmin:tmax).*L2.*cos(PSLBKP(tmin:tmax)) + FFLBWZ(tmin:tmax).*L2.*sin(PSLBKP(tmin:tmax)) - 2.*FFLBWZ(tmin:tmax).*L3.*sin(PSLBKP(tmin:tmax)) + FFLBWX(tmin:tmax).*L2.*cos(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) + FFLBWZ(tmin:tmax).*L2.*sin(2.*PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)))./(2.*L3.*sin(PSLBKP(tmin:tmax)));
% LBF3x(tmin:tmax) = LBF1x(tmin:tmax);
% LBF3z(tmin:tmax) = LBF1z(tmin:tmax);
% LBF5x(tmin:tmax) = LBF1x(tmin:tmax);
% LBF5z(tmin:tmax) = LBF1z(tmin:tmax);
% LBF4x(tmin:tmax) = LBF2x(tmin:tmax);
% LBF4z(tmin:tmax) = LBF2z(tmin:tmax);
% 
% hfig9 = figure(9);
% set(hfig9, 'position', get(0,'ScreenSize'));
% 
% subplot(5,1,1); 
% hold on
% plot(time(tmin:tmax),LBF1x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF1z(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Joint 1 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,2); 
% hold on
% plot(time(tmin:tmax),LBF2x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF2z(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Joint 2 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,3); 
% hold on
% plot(time(tmin:tmax),LBF3x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF3z(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Joint 3 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,4); 
% hold on
% plot(time(tmin:tmax),LBF4x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF4z(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Joint 4 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,5); 
% hold on
% plot(time(tmin:tmax),LBF5x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF5z(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Joint 5 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% RBF1x(tmin:tmax) =-(L2.*(FFRBWZ(tmin:tmax).*cos(PSRBKP(tmin:tmax)) - FFRBWX(tmin:tmax).*sin(PSRBKP(tmin:tmax)) - FFRBWZ(tmin:tmax).*cos(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) + FFRBWX(tmin:tmax).*sin(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax))))./(2.*L3.*sin(PSRBKP(tmin:tmax)));
% RBF2x(tmin:tmax) =(FFRBWZ(tmin:tmax).*L2.*cos(PSRBKP(tmin:tmax)) - FFRBWX(tmin:tmax).*L2.*sin(PSRBKP(tmin:tmax)) + 2.*FFRBWX(tmin:tmax).*L3.*sin(PSRBKP(tmin:tmax)) - FFRBWZ(tmin:tmax).*L2.*cos(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) + FFRBWX(tmin:tmax).*L2.*sin(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)))./(2.*L3.*sin(PSRBKP(tmin:tmax)));
% RBF1z(tmin:tmax) =(L2.*(FFRBWX(tmin:tmax).*cos(PSRBKP(tmin:tmax)) + FFRBWZ(tmin:tmax).*sin(PSRBKP(tmin:tmax)) + FFRBWX(tmin:tmax).*cos(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) + FFRBWZ(tmin:tmax).*sin(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax))))./(2.*L3.*sin(PSRBKP(tmin:tmax)));
% RBF2z(tmin:tmax) =-(FFRBWX(tmin:tmax).*L2.*cos(PSRBKP(tmin:tmax)) + FFRBWZ(tmin:tmax).*L2.*sin(PSRBKP(tmin:tmax)) - 2.*FFRBWZ(tmin:tmax).*L3.*sin(PSRBKP(tmin:tmax)) + FFRBWX(tmin:tmax).*L2.*cos(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) + FFRBWZ(tmin:tmax).*L2.*sin(2.*PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)))./(2.*L3.*sin(PSRBKP(tmin:tmax)));
% RBF3x(tmin:tmax) = RBF1x(tmin:tmax);
% RBF3z(tmin:tmax) = RBF1z(tmin:tmax);
% RBF5x(tmin:tmax) = RBF1x(tmin:tmax);
% RBF5z(tmin:tmax) = RBF1z(tmin:tmax);
% RBF4x(tmin:tmax) = RBF2x(tmin:tmax);
% RBF4z(tmin:tmax) = RBF2z(tmin:tmax);
% 
% hfig10 = figure(10);
% set(hfig10, 'position', get(0,'ScreenSize'));
% 
% subplot(5,1,1); 
% hold on
% plot(time(tmin:tmax),RBF1x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF1z(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Joint 1 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,2); 
% hold on
% plot(time(tmin:tmax),RBF2x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF2z(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Joint 2 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,3); 
% hold on
% plot(time(tmin:tmax),RBF3x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF3z(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Joint 3 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,4); 
% hold on
% plot(time(tmin:tmax),RBF4x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF4z(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Joint 4 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(5,1,5); 
% hold on
% plot(time(tmin:tmax),RBF5x(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF5z(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Joint 5 Force in World Coordinate System','fontname','Times New Roman','fontsize',16);
% legend('X','Z');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% %% Link Force
% % 分析连杆自身坐标系下的轴向力和径向力，其中A表示轴向，R表示径向，A为正表示连杆受压，负表示受拉力
% LFF1A(tmin:tmax) = FSRLFX(tmin:tmax);
% LFF1R(tmin:tmax) = FSRLFZ(tmin:tmax);
% LFF2A(tmin:tmax) = LFF1z(tmin:tmax).*cos(PSLFHP(tmin:tmax)) - LFF1x(tmin:tmax).*sin(PSLFHP(tmin:tmax));
% LFF2R(tmin:tmax) = LFF1z(tmin:tmax).*sin(PSLFHP(tmin:tmax)) + LFF1x(tmin:tmax).*cos(PSLFHP(tmin:tmax));
% LFF3A(tmin:tmax) = LFF2z(tmin:tmax).*cos(PSLFHP(tmin:tmax)) - LFF2x(tmin:tmax).*sin(PSLFHP(tmin:tmax));
% LFF3R(tmin:tmax) = LFF2z(tmin:tmax).*sin(PSLFHP(tmin:tmax)) + LFF2x(tmin:tmax).*cos(PSLFHP(tmin:tmax));
% LFF4A(tmin:tmax) = LFF3z(tmin:tmax).*cos(PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) - LFF3x(tmin:tmax).*sin(PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax));
% LFF4R(tmin:tmax) = LFF3z(tmin:tmax).*sin(PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax)) + LFF3x(tmin:tmax).*cos(PSLFHP(tmin:tmax) + PSLFKP(tmin:tmax));
% 
% hfig11 = figure(11);
% set(hfig11, 'position', get(0,'ScreenSize'));
% 
% subplot(4,1,1); 
% hold on
% plot(time(tmin:tmax),LFF1A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF1R(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Link 1 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,2); 
% hold on
% plot(time(tmin:tmax),LFF2A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF2R(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Link 2 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,3); 
% hold on
% plot(time(tmin:tmax),LFF3A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF3R(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Link 3 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,4); 
% hold on
% plot(time(tmin:tmax),LFF4A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LFF4R(tmin:tmax),'-r','LineWidth',2)
% title('Front Left Leg Link 4 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% RFF1A(tmin:tmax) = FSRRFX(tmin:tmax);
% RFF1R(tmin:tmax) = FSRRFZ(tmin:tmax);
% RFF2A(tmin:tmax) = RFF1z(tmin:tmax).*cos(PSRFHP(tmin:tmax)) - RFF1x(tmin:tmax).*sin(PSRFHP(tmin:tmax));
% RFF2R(tmin:tmax) = RFF1z(tmin:tmax).*sin(PSRFHP(tmin:tmax)) + RFF1x(tmin:tmax).*cos(PSRFHP(tmin:tmax));
% RFF3A(tmin:tmax) = RFF2z(tmin:tmax).*cos(PSRFHP(tmin:tmax)) - RFF2x(tmin:tmax).*sin(PSRFHP(tmin:tmax));
% RFF3R(tmin:tmax) = RFF2z(tmin:tmax).*sin(PSRFHP(tmin:tmax)) + RFF2x(tmin:tmax).*cos(PSRFHP(tmin:tmax));
% RFF4A(tmin:tmax) = RFF3z(tmin:tmax).*cos(PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) - RFF3x(tmin:tmax).*sin(PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax));
% RFF4R(tmin:tmax) = RFF3z(tmin:tmax).*sin(PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax)) + RFF3x(tmin:tmax).*cos(PSRFHP(tmin:tmax) + PSRFKP(tmin:tmax));
% 
% hfig12 = figure(12);
% set(hfig12, 'position', get(0,'ScreenSize'));
% 
% subplot(4,1,1); 
% hold on
% plot(time(tmin:tmax),RFF1A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF1R(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Link 1 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,2); 
% hold on
% plot(time(tmin:tmax),RFF2A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF2R(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Link 2 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,3); 
% hold on
% plot(time(tmin:tmax),RFF3A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF3R(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Link 3 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,4); 
% hold on
% plot(time(tmin:tmax),RFF4A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RFF4R(tmin:tmax),'-r','LineWidth',2)
% title('Front Right Leg Link 4 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% LBF1A(tmin:tmax) = FSRLBX(tmin:tmax);
% LBF1R(tmin:tmax) = FSRLBZ(tmin:tmax);
% LBF2A(tmin:tmax) = LBF1z(tmin:tmax).*cos(PSLBHP(tmin:tmax)) - LBF1x(tmin:tmax).*sin(PSLBHP(tmin:tmax));
% LBF2R(tmin:tmax) = LBF1z(tmin:tmax).*sin(PSLBHP(tmin:tmax)) + LBF1x(tmin:tmax).*cos(PSLBHP(tmin:tmax));
% LBF3A(tmin:tmax) = LBF2z(tmin:tmax).*cos(PSLBHP(tmin:tmax)) - LBF2x(tmin:tmax).*sin(PSLBHP(tmin:tmax));
% LBF3R(tmin:tmax) = LBF2z(tmin:tmax).*sin(PSLBHP(tmin:tmax)) + LBF2x(tmin:tmax).*cos(PSLBHP(tmin:tmax));
% LBF4A(tmin:tmax) = LBF3z(tmin:tmax).*cos(PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) - LBF3x(tmin:tmax).*sin(PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax));
% LBF4R(tmin:tmax) = LBF3z(tmin:tmax).*sin(PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax)) + LBF3x(tmin:tmax).*cos(PSLBHP(tmin:tmax) + PSLBKP(tmin:tmax));
% 
% hfig13 = figure(13);
% set(hfig13, 'position', get(0,'ScreenSize'));
% 
% subplot(4,1,1); 
% hold on
% plot(time(tmin:tmax),LBF1A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF1R(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Link 1 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,2); 
% hold on
% plot(time(tmin:tmax),LBF2A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF2R(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Link 2 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,3); 
% hold on
% plot(time(tmin:tmax),LBF3A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF3R(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Link 3 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,4); 
% hold on
% plot(time(tmin:tmax),LBF4A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),LBF4R(tmin:tmax),'-r','LineWidth',2)
% title('Back Left Leg Link 4 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% RBF1A(tmin:tmax) = FSRRBX(tmin:tmax);
% RBF1R(tmin:tmax) = FSRRBZ(tmin:tmax);
% RBF2A(tmin:tmax) = RBF1z(tmin:tmax).*cos(PSRBHP(tmin:tmax)) - RBF1x(tmin:tmax).*sin(PSRBHP(tmin:tmax));
% RBF2R(tmin:tmax) = RBF1z(tmin:tmax).*sin(PSRBHP(tmin:tmax)) + RBF1x(tmin:tmax).*cos(PSRBHP(tmin:tmax));
% RBF3A(tmin:tmax) = RBF2z(tmin:tmax).*cos(PSRBHP(tmin:tmax)) - RBF2x(tmin:tmax).*sin(PSRBHP(tmin:tmax));
% RBF3R(tmin:tmax) = RBF2z(tmin:tmax).*sin(PSRBHP(tmin:tmax)) + RBF2x(tmin:tmax).*cos(PSRBHP(tmin:tmax));
% RBF4A(tmin:tmax) = RBF3z(tmin:tmax).*cos(PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) - RBF3x(tmin:tmax).*sin(PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax));
% RBF4R(tmin:tmax) = RBF3z(tmin:tmax).*sin(PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax)) + RBF3x(tmin:tmax).*cos(PSRBHP(tmin:tmax) + PSRBKP(tmin:tmax));
% 
% hfig14 = figure(14);
% set(hfig14, 'position', get(0,'ScreenSize'));
% 
% subplot(4,1,1); 
% hold on
% plot(time(tmin:tmax),RBF1A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF1R(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Link 1 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,2); 
% hold on
% plot(time(tmin:tmax),RBF2A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF2R(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Link 2 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,3); 
% hold on
% plot(time(tmin:tmax),RBF3A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF3R(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Link 3 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);
% 
% subplot(4,1,4); 
% hold on
% plot(time(tmin:tmax),RBF4A(tmin:tmax),'-b','LineWidth',2)
% plot(time(tmin:tmax),RBF4R(tmin:tmax),'-r','LineWidth',2)
% title('Back Right Leg Link 4 Force','fontname','Times New Roman','fontsize',16);
% legend('Axial Direction','Radial Direction');
% xlabel('time [s]','fontname','Times New Roman','fontsize',16);
% ylabel('Force [N]','fontname','Times New Roman','fontsize',16); 
% set(gca,'fontname','Times New Roman','fontsize',16);