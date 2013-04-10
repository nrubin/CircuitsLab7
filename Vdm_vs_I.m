%Experiment 1 plotter for Vb = 0.5, V2 = 1V
interval = 5;

load('Exp1_Vb0.5_V21_Data.mat');

Vdm1 = linspace(-0.3,0.3,500);
Idm1 = Exp1_Vb1_I1 - Exp1_Vb1_I2;
Icm1 = Exp1_Vb1_I1 + Exp1_Vb1_I2;
I1_1 = Exp1_Vb1_I1;
I2_1 = Exp1_Vb1_I2;

load('Exp1_Vb0.5_V22.5_Data.mat');

Vdm2 = linspace(-0.3,0.3,500);
Idm2 = Exp1_Vb25_I1 - Exp1_Vb25_I2;
Icm2 = Exp1_Vb25_I1 + Exp1_Vb25_I2;
I1_2 = Exp1_Vb25_I1;
I2_2 = Exp1_Vb25_I2;

load('Exp1_Vb0.5_ V24.5_Data.mat')

 Vdm3 = linspace(-0.3,0.3,500);
Idm3 = Exp1_Vb45_I1 - Exp1_Vb45_I2;
Icm3 = Exp1_Vb45_I1 + Exp1_Vb45_I2;
I1_3 = Exp1_Vb45_I1;
I2_3 = Exp1_Vb45_I2;

plot(Vdm1(1:interval:end),I1_1(1:interval:end),'*--'); hold on;
plot(Vdm1(1:interval:end),I2_1(1:interval:end),'s--');
plot(Vdm1(1:interval:end),Idm1(1:interval:end),'^--');
plot(Vdm1(1:interval:end),Icm1(1:interval:end),'o--');

plot(Vdm2(1:interval+1:end),I1_2(1:interval+1:end),'r*--'); 
plot(Vdm2(1:interval+1:end),I2_2(1:interval+1:end),'rs--');
plot(Vdm2(1:interval+1:end),Idm2(1:interval+1:end),'r^--');
plot(Vdm2(1:interval+1:end),Icm2(1:interval+1:end),'ro--');

plot(Vdm3(1:interval-1:end),I1_3(1:interval-1:end),'g*--'); 
plot(Vdm3(1:interval-1:end),I2_3(1:interval-1:end),'gs--');
plot(Vdm3(1:interval-1:end),Idm3(1:interval-1:end),'g^--');
plot(Vdm3(1:interval-1:end),Icm3(1:interval-1:end),'go--');

xlim([-0.3 0.3]);
ylim([-2e-7 2e-7]);
grid on;

legend('I_1 for V_2 = 1 V',...
'I_2 for V_2 = 1 V',...
'I_1 - I_2 for V_2 = 1 V',...
'I_1 + I_2 for V_2 = 1 V',...
'I_1 for V_2 = 2.5 V',...
'I_2 for V_2 = 2.5 V',...
'I_1 - I_2 for V_2 = 2.5 V',...
'I_1 + I_2 for V_2 = 2.5 V',...
'I_1 for V_2 = 4.5 V',...
'I_2 for V_2 = 4.5 V',...
'I_1 - I_2 for V_2 = 4.5 V',...
'I_1 + I_2 for V_2 = 4.5 V','Location','SouthEast')