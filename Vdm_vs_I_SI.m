%Strong inversion current plotter
load('Exp2_Vb1_Data.mat');

Vdm1 = linspace(-0.7,0.7,500);
Idm1 = Exp1_Vb1_I1 - Exp1_Vb1_I2;
Icm1 = Exp1_Vb1_I1 + Exp1_Vb1_I2;
I1_1 = Exp1_Vb1_I1;
I2_1 = Exp1_Vb1_I2;