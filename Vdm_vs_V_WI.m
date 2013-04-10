%node voltage weak inversion

load('Exp1_Vb0.5_V21_Data.mat');
Vdm1 = linspace(-0.3,0.3,500);
V1 = Exp1_Vb1_V;

load('Exp1_Vb0.5_V22.5_Data.mat');
Vdm2 = linspace(-0.3,0.3,500);
V2 = Exp1_Vb25_V;

load('Exp1_Vb0.5_ V24.5_Data.mat')
Vdm3 = linspace(-0.3,0.3,500);
V3 = Exp1_Vb45_V;


plot(Vdm1,V1,'.','MarkerSize',20); hold on;
plot(Vdm2(25:end),V2(25:end),'r.','MarkerSize',20);
plot(Vdm3,V3,'g.','MarkerSize',20);

xlabel('V_{dm} (Volts)')
ylabel('V (Volts)');
title('Node Voltage V as a Function of V_{dm} for a Differential Pair');
leg = legend('Node Voltage for V_2 = 1 V','Node Voltage for V_2 = 2.5 V','Node Voltage for V_2 = 4.5 V','Location','NorthWest');
xlim([-0.3 0.3])
set(leg,'Position',[0.1456    0.5968    0.2042    0.1502]);
% set(leg,'FontSize',20);