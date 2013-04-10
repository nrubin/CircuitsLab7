%I1 -I2 with theoretical fits
interval = 1;
load('Exp1_Vb0.5_V21_Data.mat');

Vdm1 = linspace(-0.3,0.3,500);
Idm1 = Exp1_Vb1_I1 - Exp1_Vb1_I2;

load('Exp1_Vb0.5_V22.5_Data.mat');

Vdm2 = linspace(-0.3,0.3,500);
Idm2 = Exp1_Vb25_I1 - Exp1_Vb25_I2;

load('Exp1_Vb0.5_ V24.5_Data.mat')

 Vdm3 = linspace(-0.3,0.3,500);
Idm3 = Exp1_Vb45_I1 - Exp1_Vb45_I2;
% Vdm1(1:interval:end),
plot(Idm1(1:interval:end),'.','LineWidth',2,'MarkerSize',10); hold on;
% plot(Vdm2(1:interval:end),Idm2(1:interval:end),'r.','LineWidth',2,'MarkerSize',10);
% plot(Vdm3(1:interval:end),Idm3(1:interval:end),'g.','LineWidth',2,'MarkerSize',10);

% xlim([-0.3 0.3]);
% ylim([-2e-7 2e-7]); 
grid on;

% legend('I_1 - I_2 for V_2 = 1 V',...
% 'I_1 - I_2 for V_2 = 2.5 V',...
% 'I_1 - I_2 for V_2 = 4.5 V','Location','NorthWest');

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