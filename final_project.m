%BME4409 Final Project
clc; clear; close all;

A1 = 2.5;
A2 = 3;
A3 = 3.5;
A4 = 4;
A5 = 4.5;
T = 1:0.1:21;
Tint = 0:1;
S = 1;
Y = 24;

dPV1 = 0.05 - 1.93*T + 0.27*(T.^2) - 2.82*A1 - 0.58*A1*T - 0.82*S + 0.73*S*T + 0.064*A1*Y;
dPV2 = 0.05 - 1.93*T + 0.27*(T.^2) - 2.82*A2 - 0.58*A2*T - 0.82*S + 0.73*S*T + 0.064*A2*Y;
dPV3 = 0.05 - 1.93*T + 0.27*(T.^2) - 2.82*A3 - 0.58*A3*T - 0.82*S + 0.73*S*T + 0.064*A3*Y;
dPV4 = 0.05 - 1.93*T + 0.27*(T.^2) - 2.82*A4 - 0.58*A4*T - 0.82*S + 0.73*S*T + 0.064*A4*Y;
dPV5 = 0.05 - 1.93*T + 0.27*(T.^2) - 2.82*A5 - 0.58*A5*T - 0.82*S + 0.73*S*T + 0.064*A5*Y;

dCO1 = 0.818*dPV1 - 10.84;
dCO2 = 0.818*dPV2 - 10.84;
dCO3 = 0.818*dPV3 - 10.84;
dCO4 = 0.818*dPV4 - 10.84;
dCO5 = 0.818*dPV5 - 10.84;

dSV1 = 1.185*dPV1 - 10.6;
dSV2 = 1.185*dPV2 - 10.6;
dSV3 = 1.185*dPV3 - 10.6;
dSV4 = 1.185*dPV4 - 10.6;
dSV5 = 1.185*dPV5 - 10.6;

dHR1 = -0.61*dPV1 - 2.21;
dHR2 = -0.61*dPV2 - 2.21;
dHR3 = -0.61*dPV3 - 2.21;
dHR4 = -0.61*dPV4 - 2.21;
dHR5 = -0.61*dPV5 - 2.21;

figure
hold on
plot(T,dCO1,'Color','red')
plot(T,dCO2,'Color','blue')
plot(T,dCO3,'Color','green')
plot(T,dCO4,'Color','magenta')
plot(T,dCO5,'Color','black')
plot(Tint,[0 dCO1(1)],'Color','red')
plot(Tint,[0 dCO2(1)],'Color','blue')
plot(Tint,[0 dCO3(1)],'Color','green')
plot(Tint,[0 dCO4(1)],'Color','magenta')
plot(Tint,[0 dCO5(1)],'Color','black')
xlabel('Time (days)')
ylabel('% Change in Cardiac Output')
ylim([-35 0])
xlim([0 21])
legend('2.5 km','3.0 km','3.5 km','4.0 km','4.5 km',Location='southeast')
title('Change in CO from Sea Level in Women (Age 24)')
hold off

figure
hold on
plot(T,dSV1,'Color','red')
plot(T,dSV2,'Color','blue')
plot(T,dSV3,'Color','green')
plot(T,dSV4,'Color','magenta')
plot(T,dSV5,'Color','black')
plot(Tint,[0 dSV1(1)],'Color','red')
plot(Tint,[0 dSV2(1)],'Color','blue')
plot(Tint,[0 dSV3(1)],'Color','green')
plot(Tint,[0 dSV4(1)],'Color','magenta')
plot(Tint,[0 dSV5(1)],'Color','black')
xlabel('Time (days)')
ylabel('% Change in Stroke Volume')
ylim([-45 0])
xlim([0 21])
legend('2.5 km','3.0 km','3.5 km','4.0 km','4.5 km',Location='southeast')
title('Change in SV from Sea Level in Women (Age 24)')
hold off

figure
hold on
plot(T,dHR1,'Color','red')
plot(T,dHR2,'Color','blue')
plot(T,dHR3,'Color','green')
plot(T,dHR4,'Color','magenta')
plot(T,dHR5,'Color','black')
plot(Tint,[0 dHR1(1)],'Color','red')
plot(Tint,[0 dHR2(1)],'Color','blue')
plot(Tint,[0 dHR3(1)],'Color','green')
plot(Tint,[0 dHR4(1)],'Color','magenta')
plot(Tint,[0 dHR5(1)],'Color','black')
xlabel('Time (days)')
ylabel('% Change in Heart Rate')
ylim([0 14])
xlim([0 21])
legend('2.5 km','3.0 km','3.5 km','4.0 km','4.5 km',Location='northeast')
title('Change in HR from Sea Level in Women (Age 24)')
hold off



