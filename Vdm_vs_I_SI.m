%Strong inversion current plotter
load('Exp2_Vb1_Data.mat');
interval = 5;
Vdm = linspace(-0.7,0.7,500);
Idm = Exp1_Vb1_V245_I1 - Exp1_Vb1_V245_I2;
Icm = Exp1_Vb1_V245_I1 + Exp1_Vb1_V245_I2;
I1 = Exp1_Vb1_V245_I1;
I2 = Exp1_Vb1_V245_I2;

%162 308
coeffs = polyfit(Vdm(162:308),Idm(162:308),1);

plot(Vdm(1:interval:end),I1(1:interval:end),'.','MarkerSize',20,'LineWidth',2); hold on;
plot(Vdm(1:interval:end),I2(1:interval:end),'r.','MarkerSize',20,'LineWidth',2);
plot(Vdm(1:interval:end),Idm(1:interval:end),'g.','MarkerSize',20,'LineWidth',2);
plot(Vdm(1:interval:end),Icm(1:interval:end),'k.','MarkerSize',20,'LineWidth',2);
plot(Vdm,Vdm*coeffs(1) + coeffs(2),'g','LineWidth',2);
xlim([-0.7 0.7]);
ylim([-8e-5 8e-5]);
legend('I_1','I_2','I_1 - I_2','I_1 + I_2','G_{dm}','Location','SouthEast');
xlabel('V_{dm} (Volts)');
ylabel('I (Amps)');
title({'Various Currents and G_{dm} as a Function of V_{dm} ';'for a Differential Pair with Strong Inversion Bias Current'});