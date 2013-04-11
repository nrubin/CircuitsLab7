%Experiment 1 plotter for Vb = 0.5, V2 = 1V
interval = 1;

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

plot(Vdm1(1:interval:end),I1_1(1:interval:end),'*','MarkerSize',10); hold on;
plot(Vdm1(1:interval:end),I2_1(1:interval:end),'s','MarkerSize',10);
plot(Vdm1(1:interval:end),Idm1(1:interval:end),'^','MarkerSize',10);
plot(Vdm1(1:interval:end),Icm1(1:interval:end),'o','MarkerSize',10);


plot(Vdm2(1:interval:end),I1_2(1:interval:end),'r*','MarkerSize',10); 
plot(Vdm2(1:interval:end),I2_2(1:interval:end),'rs','MarkerSize',10);
plot(Vdm2(1:interval:end),Idm2(1:interval:end),'r^','MarkerSize',10);
plot(Vdm2(1:interval:end),Icm2(1:interval:end),'ro','MarkerSize',10);

plot(Vdm3(1:interval:end),I2_3(1:interval:end),'gs','MarkerSize',10);
plot(Vdm3(1:interval:end),I1_3(1:interval:end),'g*','MarkerSize',10);
plot(Vdm3(1:interval:end),Idm3(1:interval:end),'g^','MarkerSize',10);
plot(Vdm3(1:interval:end),Icm3(1:interval:end),'go','MarkerSize',10);

xlim([-0.3 0.3]);
grid on;

set(get(gca,'Title'),'String',{'Different Currents as a Function of V_{dm}';'for a Differential Pair at Weak Inversion Bias Current'});
ylabel('Current (A)');
xlabel('V_{dm} (V)');

legend('I_1 for V_2 = 2 V',...
'I_2 for V_2 = 2 V',...
'I_1 - I_2 for V_2 = 2 V',...
'I_1 + I_2 for V_2 = 2 V',...
'I_1 for V_2 = 3 V',...
'I_2 for V_2 = 3 V',...
'I_1 - I_2 for V_2 = 3 V',...
'I_1 + I_2 for V_2 = 3 V',...
'I_1 for V_2 = 4 V',...
'I_2 for V_2 = 4 V',...
'I_1 - I_2 for V_2 = 4 V',...
'I_1 + I_2 for V_2 = 4 V','Location','SouthEast')