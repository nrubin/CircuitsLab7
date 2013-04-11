%node voltage weak inversion

load('newdata.mat')

Vdm1 = linspace(-0.3,0.3,100);
Idm1 = I1i - I2i;
Icm1 = I1i + I2i;
I1_1 = I1i;      
I2_1 = I2i;      

Vdm2 = linspace(-0.3,0.3,100);
Idm2 = I1iii - I2ii;
Icm2 = I1iii + I2ii;
I1_2 = I1iii;      
I2_2 = I2iii;      

Vdm3 = linspace(-0.3,0.3,100);
Idm3 = I1iii - I2iii;
Icm3 = I1iii + I2iii;
I1_3 = I1iii;      
I2_3 = I2iii;

V1 = Vi;

V2 = Vii;

V3 = Viii;


plot(Vdm1,V1,'.','MarkerSize',20); hold on;
plot(Vdm2,V2,'r.','MarkerSize',20);
plot(Vdm3,V3,'g.','MarkerSize',20);

xlabel('V_{dm} (Volts)')
ylabel('V (Volts)');
title('Node Voltage V as a Function of V_{dm} for a Differential Pair');
leg = legend('Node Voltage for V_2 = 2 V','Node Voltage for V_2 = 3 V','Node Voltage for V_2 = 4 V','Location','NorthWest');
xlim([-0.3 0.3])
% set(leg,'Position',[0.1456    0.5968    0.2042    0.1502]);
% set(leg,'FontSize',20);