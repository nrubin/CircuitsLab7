%I1 -I2 with theoretical fits
interval = 2;
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

%39 59

coeffs1 = polyfit(Vdm1(39:59), Idm1(39:59),1);
slope1 = coeffs1(1);
intercept1 = coeffs1(2);
Idm1Fit = slope1*Vdm1 + intercept1;

coeffs2 = polyfit(Vdm2(39:59), Idm2(39:59),1);
slope2 = coeffs2(1);
intercept2 = coeffs2(2);
Idm2Fit = slope2*Vdm2 + intercept2;

coeffs3 = polyfit(Vdm3(39:59), Idm3(39:59),1);
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
ylim([-0.8e-5 0.8e-5]); 
grid on;
set(get(gca,'Title'),'String','I_{dm} and G_{dm} for a Differential Pair');
legend('I_1 - I_2 for V_2 = 2 V',...
    'G_{dm} for V_2 = 2 V',...
'I_1 - I_2 for V_2 = 3 V',...slo
'G_{dm} for V_2 = 3 V',...
'I_1 - I_2 for V_2 = 4 V',...
'G_{dm} for V_2 = 4 V','Location','NorthWest');

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