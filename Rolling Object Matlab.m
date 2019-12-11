%% Part 1
clear
%Time
t = 0:0.01:2;

%Constants
g = 9.81;
R = .05;
r = .045;
theta = 5;

%Equations
I_cylinder = 1/2*R^2;
I_hollowCylinder = 1/2*(r^2+R^2);
alpha_cyl = ((g*R*sin(theta*pi/180))/(I_cylinder+R^2));
alpha_hol = ((g*R*sin(theta*pi/180))/(I_hollowCylinder+R^2));
delta_xCyl = 1/2*(R*alpha_cyl).*t.^2;
delta_xHol = 1/2*(R*alpha_hol).*t.^2;
%plotting
hold on
plot(t, delta_xCyl, 'R')
plot(t, delta_xHol, 'B')
legend('Solid','Hollow')
xlabel('Time (s)')
ylabel('Position(m)')
title("Position vs Time of Cylinders Rolling Down an Incline")
hold off

%% Part 2
clear all
%Time
t = 2;

%Constants
g = 9.81;
R = .05;
r = 0:.001:.05;
theta1 = 1;
theta2 = 3;
theta3 = 5;
theta4 = 10;
theta5 = 15;

%Equations
I = 1/2.*r.^2+1/2*R^2;
alpha1 = ((g*R*sin(theta1*pi/180))./(I+R^2));
delta_x1 = 1/2*(R*alpha1).*t.^2;

alpha2 = ((g*R*sin(theta2*pi/180))./(I+R^2));
delta_x2 = 1/2*(R*alpha2).*t.^2;

alpha3 = ((g*R*sin(theta3*pi/180))./(I+R^2));
delta_x3 = 1/2*(R*alpha3).*t.^2;

alpha4 = ((g*R*sin(theta4*pi/180))./(I+R^2));
delta_x4 = 1/2*(R*alpha4).*t.^2;

alpha5 = ((g*R*sin(theta5*pi/180))./(I+R^2));
delta_x5 = 1/2*(R*alpha5).*t.^2;
%plotting
figure
hold on
plot(2.*r, delta_x1, 'R')
plot(2.*r, delta_x2, 'B')
plot(2.*r, delta_x3, 'G')
plot(2.*r, delta_x4, 'C')
plot(2.*r, delta_x5, 'Black')
legend('1 degree incline','3 degree incline','5 degree incline','10 degree incline','15 degree incline')
xlabel('Inner Diameter (m)')
xticks([0 .01 .02 .03 .04 .05 .06 .07 .08 .09 .1])
yticks([0 .2 .4 .6 .8 1 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2 3.4])
ylabel('Position after 2 seconds (m)')
title("Position vs Time of Cylinders Rolling Down an Incline")
hold off

