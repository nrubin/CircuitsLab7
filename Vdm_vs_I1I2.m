%I1 -I2 with theoretical fits
interval = 5;
load('Exp1_Vb0.5_V21_Data.mat');
Vdm1 = linspace(-0.3,0.3,500);
Idm1 = Exp1_Vb1_I1 - Exp1_Vb1_I2;

load('Exp1_Vb0.5_V22.5_Data.mat');
Vdm2 = linspace(-0.3,0.3,500);
Idm2 = Exp1_Vb25_I1 - Exp1_Vb25_I2;

load('Exp1_Vb0.5_ V24.5_Data.mat')
Vdm3 = linspace(-0.3,0.3,500);
Idm3 = Exp1_Vb45_I1 - Exp1_Vb45_I2;

coeffs1 = polyfit(Vdm1(214:286), Idm1(214:286),1);
slope1 = coeffs1(1);
intercept1 = coeffs1(2);
Idm1Fit = slope1*Vdm1 + intercept1;

coeffs2 = polyfit(Vdm2(214:286), Idm2(214:286),1);
slope2 = coeffs2(1);
intercept2 = coeffs2(2);
Idm2Fit = slope2*Vdm2 + intercept2;

coeffs3 = polyfit(Vdm3(214:286), Idm3(214:286),1);
slope3 = coeffs3(1);
intercept3 = coeffs3(2);
Idm3Fit = slope3*Vdm3 + intercept3;

% 
plot(Vdm1(1:interval:end),Idm1(1:interval:end),'.','MarkerSize',20); hold on;
plot(Vdm1,Idm1Fit,'-','LineWidth',2);
plot(Vdm2(1:interval:end),Idm2(1:interval:end),'r.','MarkerSize',20);
plot(Vdm2,Idm2Fit,'r-','LineWidth',2);
plot(Vdm3(1:interval:end),Idm3(1:interval:end),'g.','MarkerSize',20);
plot(Vdm3,Idm3Fit,'g-','LineWidth',2);

xlim([-0.3 0.3]);
ylim([-2e-7 2e-7]); 
grid on;
set(get(gca,'Title'),'String','I_{dm} and G_{dm} for a Differential Pair');
legend('I_1 - I_2 for V_2 = 1 V',...
    'G_{dm} for V_2 = 1V',...
'I_1 - I_2 for V_2 = 2.5 V',...
'G_{dm} for V_2 = 2.5V',...
'I_1 - I_2 for V_2 = 4.5 V',...
'G_{dm} for V_2 = 4.5V','Location','NorthWest');

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