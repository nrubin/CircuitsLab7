%Experiment 1 plotter for Vb = 0.5, V2 = 1V
interval = 10;

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

plot(Vdm1(1:interval:end),I1_1(1:interval:end),'*--','MarkerSize',15,'LineWidth',2); hold on;
plot(Vdm1(1:interval:end),I2_1(1:interval:end),'s--','MarkerSize',15,'LineWidth',2);
plot(Vdm1(1:interval:end),Idm1(1:interval:end),'^--','MarkerSize',15,'LineWidth',2);
plot(Vdm1(1:interval:end),Icm1(1:interval:end),'o--','MarkerSize',15,'LineWidth',2);

plot(Vdm2(1:interval+1:end),I1_2(1:interval+1:end),'r*--','MarkerSize',15,'LineWidth',2); 
plot(Vdm2(1:interval+1:end),I2_2(1:interval+1:end),'rs--','MarkerSize',15,'LineWidth',2);
plot(Vdm2(1:interval+1:end),Idm2(1:interval+1:end),'r^--','MarkerSize',15,'LineWidth',2);
plot(Vdm2(1:interval+1:end),Icm2(1:interval+1:end),'ro--','MarkerSize',15,'LineWidth',2);

plot(Vdm3(1:interval-1:end),I1_3(1:interval-1:end),'g*--','MarkerSize',15,'LineWidth',2); 
plot(Vdm3(1:interval-1:end),I2_3(1:interval-1:end),'gs--','MarkerSize',15,'LineWidth',2);
plot(Vdm3(1:interval-1:end),Idm3(1:interval-1:end),'g^--','MarkerSize',15,'LineWidth',2);
plot(Vdm3(1:interval-1:end),Icm3(1:interval-1:end),'go--','MarkerSize',15,'LineWidth',2);

xlim([-0.3 0.3]);
ylim([-2e-7 2e-7]);
grid on;

set(get(gca,'Title'),'String',{'Different Currents as a Function of V_{dm}';'for a Differential Pair at Weak Inversion Bias Current'});
ylabel('Current (A)');
xlabel('V_{dm} (V)');

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