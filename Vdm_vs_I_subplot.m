%Vdm vs 1 granular
interval = 5;

load('Exp1_Vb0.5_V21_Data.mat');

Vdm1 = linspace(-0.3,0.3,500);
I1_1 = Exp1_Vb1_I1;
I2_1 = Exp1_Vb1_I2;
Idm1 = I1_1 - I2_1;
Icm1 = I1_1 + I2_1;


load('Exp1_Vb0.5_V22.5_Data.mat');

Vdm2 = linspace(-0.3,0.3,500);
I1_2 = Exp1_Vb25_I1;
I2_2 = Exp1_Vb25_I2;
Idm2 = I1_2 - I2_2;
Icm2 = I1_2 + I2_2;


load('Exp1_Vb0.5_ V24.5_Data.mat')

Vdm3 = linspace(-0.3,0.3,500);
I1_3 = Exp1_Vb45_I1;
I2_3 = Exp1_Vb45_I2;
Idm3 = I1_3 - I2_3;
Icm3 = I1_3 + I2_3;




one = subplot(2,2,1);

plot(Vdm1(1:interval:end),I1_1(1:interval:end),'*--','LineWidth',2,'MarkerSize',10); hold on;
plot(Vdm2(1:interval:end),I1_2(1:interval:end),'r*--','LineWidth',2,'MarkerSize',10); 
plot(Vdm3(1:interval:end),I1_3(1:interval:end),'g*--','LineWidth',2,'MarkerSize',10); 

xlim([-0.3 0.3]);
ylim([0 2e-7]);
grid on;

legend('I_1 for V_2 = 1 V',...
'I_1 for V_2 = 2.5 V',...
'I_1 for V_2 = 4.5 V','Location','NorthWest');


four = subplot(2,2,2);

plot(Vdm1(1:interval:end),I2_1(1:interval:end),'s--','LineWidth',2,'MarkerSize',10); hold on;
plot(Vdm2(1:interval:end),I2_2(1:interval:end),'rs--','LineWidth',2,'MarkerSize',10);
plot(Vdm3(1:interval:end),I2_3(1:interval:end),'gs--','LineWidth',2,'MarkerSize',10);

xlim([-0.3 0.3]);
ylim([0 2e-7]);
grid on;

legend('I_2 for V_2 = 1 V',...
'I_2 for V_2 = 2.5 V',...
'I_2 for V_2 = 4.5 V','Location','NorthEast');

five = subplot(2,2,3);

plot(Vdm1(1:interval:end),Idm1(1:interval:end),'^--','LineWidth',2,'MarkerSize',10); hold on;
plot(Vdm2(1:interval:end),Idm2(1:interval:end),'r^--','LineWidth',2,'MarkerSize',10);
plot(Vdm3(1:interval:end),Idm3(1:interval:end),'g^--','LineWidth',2,'MarkerSize',10);

xlim([-0.3 0.3]);
ylim([-2e-7 2e-7]); 
grid on;

legend('I_1 - I_2 for V_2 = 1 V',...
'I_1 - I_2 for V_2 = 2.5 V',...
'I_1 - I_2 for V_2 = 4.5 V','Location','NorthWest');

eight = subplot(2,2,4);

plot(Vdm1(1:interval:end),Icm1(1:interval:end),'o--','LineWidth',2,'MarkerSize',10); hold on;
plot(Vdm2(1:interval:end),Icm2(1:interval:end),'ro--','LineWidth',2,'MarkerSize',10);
plot(Vdm3(1:interval:end),Icm3(1:interval:end),'go--','LineWidth',2,'MarkerSize',10);

xlim([-0.3 0.3]);
ylim([0 2e-7]);
grid on;

legend('I_1 + I_2 for V_2 = 1 V',...
'I_1 + I_2 for V_2 = 2.5 V',...
'I_1 + I_2 for V_2 = 4.5 V','Location','Best');

% set(get(big,'Title'),'String','Different Currents as a Function of V_{dm} for a Differential Pair');
set(get(one,'Title'),'String','I_1 as a Function of V_{dm}');
set(get(four,'Title'),'String','I_2 as a Function of V_{dm}');
set(get(five,'Title'),'String','I_1 - I_2 as a Function of V_{dm}');
set(get(eight,'Title'),'String','I_1 + I_2 as a Function of V_{dm}');

all_ax = findobj(gcf,'Type','axes');
    
for i=1:length(all_ax) %in order to support subplots
    ax = all_ax(i);
    ylbl = get(ax,'ylabel');
    xlbl = get(ax,'xlabel');
    title = get(ax,'Title');
    leg = findobj(gcf,'Type','axes','Tag','legend');
    
    if ~strcmp(get(ax,'Tag'),'legend')
        set(ylbl,'String','Current (A)');
        set(xlbl,'String','V_{dm} (V)');
    end
    
end

% legend(
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% ,'Location','SouthEast')
% 
% 
% 
% big = subplot(2,4,[2,3,6,7]);
% 
% plot(Vdm1(1:interval:end),I1_1(1:interval:end),'*--'); hold on;
% plot(Vdm1(1:interval:end),I2_1(1:interval:end),'s--');
% plot(Vdm1(1:interval:end),Idm1(1:interval:end),'^--');
% plot(Vdm1(1:interval:end),Icm1(1:interval:end),'o--');
% 
% plot(Vdm2(1:interval+1:end),I1_2(1:interval+1:end),'r*--'); 
% plot(Vdm2(1:interval+1:end),I2_2(1:interval+1:end),'rs--');
% plot(Vdm2(1:interval+1:end),Idm2(1:interval+1:end),'r^--');
% plot(Vdm2(1:interval+1:end),Icm2(1:interval+1:end),'ro--');
% 
% plot(Vdm3(1:interval-1:end),I1_3(1:interval-1:end),'g*--'); 
% plot(Vdm3(1:interval-1:end),I2_3(1:interval-1:end),'gs--');
% plot(Vdm3(1:interval-1:end),Idm3(1:interval-1:end),'g^--');
% plot(Vdm3(1:interval-1:end),Icm3(1:interval-1:end),'go--');
% 
% xlim([-0.3 0.3]);
% ylim([-2e-7 2e-7]);
% grid on;
% 
% legend('I_1 for V_2 = 1 V',...
% 'I_2 for V_2 = 1 V',...
% 'I_1 - I_2 for V_2 = 1 V',...
% 'I_1 + I_2 for V_2 = 1 V',...
% 'I_1 for V_2 = 2.5 V',...
% 'I_2 for V_2 = 2.5 V',...
% 'I_1 - I_2 for V_2 = 2.5 V',...
% 'I_1 + I_2 for V_2 = 2.5 V',...
% 'I_1 for V_2 = 4.5 V',...
% 'I_2 for V_2 = 4.5 V',...
% 'I_1 - I_2 for V_2 = 4.5 V',...
% 'I_1 + I_2 for V_2 = 4.5 V','Location','SouthEast')