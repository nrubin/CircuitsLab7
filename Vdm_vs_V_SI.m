%node voltage weak inversion

load('Exp2_Vb1_Data.mat');
interval = 5;
Vdm = linspace(-0.7,0.7,500);
Idm = Exp1_Vb1_V245_I1 - Exp1_Vb1_V245_I2;
Icm = Exp1_Vb1_V245_I1 + Exp1_Vb1_V245_I2;
I1 = Exp1_Vb1_V245_I1;
I2 = Exp1_Vb1_V245_I2;
V = Exp1_Vb1_V245_V;

plot(Vdm,V,'.','MarkerSize',20); hold on;
xlabel('V_{dm} (Volts)')
ylabel('V (Volts)');
title({'Node Voltage as a Function of V_{dm} ';'for a Differential Pair with Strong Inversion Bias Current'});
% leg = legend('Node Voltage for V_2 = 1 V','Location','NorthWest');
xlim([-0.7 0.7])
% set(leg,'Position',[0.1456    0.5968    0.2042    0.1502]);
% set(leg,'FontSize',20);