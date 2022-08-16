%Get the properties of the FB compresional boundary for muiltiple runs with
%different parameters
% clear 


timeSteps = 500;
outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95;
dt = 0.02;
output = outputSteps;
stepInterval = 1;

time = timeSteps/50;%18;%gyroperiods
timeFrame = time/(dt*outputSteps)

xcut=160;

n0 = 5e15;
va = 48.95;

load('/import/c1/DAYSIDE/atvu/RunsOutput_RBshear.mat')

% [RB06shear90] =   getCompressionProperties('364',dt,outputSteps,time,xcut,12,10,20,8+06,90);
% [RB02shear90] =   getCompressionProperties('365',dt,outputSteps,time,xcut,12,10,20,8+02,90);
% [RB10shear90] =   getCompressionProperties('366',dt,outputSteps,time,xcut,12,10,20,8+10,90);
% [RB14shear90] =   getCompressionProperties('373',dt,outputSteps,time,xcut,12,10,20,8+14,90);
% 
% 
% [RB06shear60] =   getCompressionProperties('367',dt,outputSteps,time,xcut,12,10,20,8+06,60);
% [RB02shear60] =   getCompressionProperties('368',dt,outputSteps,time,xcut,12,10,20,8+02,60);
% [RB10shear60] =   getCompressionProperties('369',dt,outputSteps,time,xcut,12,10,20,8+10,60);
% [RB14shear60] =   getCompressionProperties('374',dt,outputSteps,time,xcut,12,10,20,8+14,60);
% 
% 
% [RB06shear30] =   getCompressionProperties('370',dt,outputSteps,time,xcut,12,10,20,8+06,30);
% [RB02shear30] =   getCompressionProperties('371',dt,outputSteps,time,xcut,12,10,20,8+02,30);
% [RB10shear30] =   getCompressionProperties('372',dt,outputSteps,time,xcut,12,10,20,8+10,30);
% [RB14shear30] =   getCompressionProperties('375',dt,outputSteps,time,xcut,12,10,20,8+14,30);
% 
% [RB06shear120] =   getCompressionProperties('376',dt,outputSteps,time,xcut,12,10,20,8+06,30);
% [RB02shear120] =   getCompressionProperties('377',dt,outputSteps,time,xcut,12,10,20,8+02,30);
% [RB10shear120] =   getCompressionProperties('378',dt,outputSteps,time,xcut,12,10,20,8+10,30);
% [RB14shear120] =   getCompressionProperties('379',dt,outputSteps,time,xcut,12,10,20,8+14,30);

earlyTime = 12;
lateTime = 18;
centerTime = 12; %Frames. /2 for t.
windowTime = 1;
%% Ring Beam and TD Magnetic Shear, Currents Jx
for cutTime = [centerTime]
cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


xValues = [6, 2, 10,14];

yValues1 = mean([...
    RB06shear120.Jx(cutTime,:),...
    RB02shear120.Jx(cutTime,:),...
    RB10shear120.Jx(cutTime,:),...
    RB14shear120.Jx(cutTime,:),...
    ],1);

yValues2 = mean([...
    RB06shear90.Jx(cutTime,:),...
    RB02shear90.Jx(cutTime,:),...
    RB10shear90.Jx(cutTime,:),...
    RB14shear90.Jx(cutTime,:),...
    ],1);

yValues3 = mean([...
    RB06shear60.Jx(cutTime,:),...
    RB02shear60.Jx(cutTime,:),...
    RB10shear60.Jx(cutTime,:),...
    RB14shear60.Jx(cutTime,:),...
    ],1);

yValues4 = mean([...
    RB06shear30.Jx(cutTime,:),...
    RB02shear30.Jx(cutTime,:),...
    RB10shear30.Jx(cutTime,:),...
    RB14shear30.Jx(cutTime,:),...
    ],1);

scatter(xValues,yValues1,300,'filled','k'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues1,1);
corr = corrcoef(xValues,yValues1);
Xint = P(2) / -(P(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)+2); y1 = polyval(P,x1);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)-30*xL(2)/100, yL(2)*120/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','k')
hold on

% yyaxis left
scatter(xValues,yValues2,300,'filled','b'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues2,1);
corr = corrcoef(xValues,yValues2);
Xint = P(2) / -(P(1));
xLimits = xlim; x2 = linspace(Xint,xLimits(2)+2); y2 = polyval(P,x2);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)-30*xL(2)/100, yL(2)*112/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','b')



scatter(xValues,yValues3,300,'filled','g'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues3,1);
corr = corrcoef(xValues,yValues3);
Xint = P(2) / -(P(1));
xLimits = xlim; x3 = linspace(Xint,xLimits(2)+2); y3 = polyval(P,x3);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)-30*xL(2)/100, yL(2)*104/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','g')


scatter(xValues,yValues4,300,'filled','r'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues4,1);
corr = corrcoef(xValues,yValues4);
Xint = P(2) / -(P(1));
xLimits = xlim; x4 = linspace(Xint,xLimits(2)+2); y4 = polyval(P,x4);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)-30*xL(2)/100, yL(2)*90/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','r')

plot(x1,y1,'k--')
plot(x2,y2,'b--')
plot(x3,y3,'g--')
plot(x4,y4,'r--')

% yyaxis right
% scatter(xValues,yValues2,300,'filled');
% ylabel('Trailing \Delta Jx [J_0]','fontsize',14)
% yyaxis left

box on; grid on
xlabel('FS V_T + V_R [V_A]','fontsize',14)
ylabel('\Delta Jx [J_0]','fontsize',14)
% legend('location','southeast')
legend({'120°';'90°';'60°';'30°'},'location','northwest')
xlim([-10 20])
cutTime = mean(cutTime);
title(strcat('Ring Beam and TD Magnetic Shear t =',{' '},string(cutTime/2),{' '},': \Delta Jx'),'fontsize',14)


fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','RingBeam_Shear_DeltaJx_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
%% Ring Beam and TD Magnetic Shear, Currents Jy
for cutTime = [centerTime]
cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


xValues = [6, 2, 10,14];

yValues1 = mean([...
    RB06shear120.Jy(cutTime,:),...
    RB02shear120.Jy(cutTime,:),...
    RB10shear120.Jy(cutTime,:),...
    RB14shear120.Jy(cutTime,:),...
    ],1);

yValues2 = mean([...
    RB06shear90.Jy(cutTime,:),...
    RB02shear90.Jy(cutTime,:),...
    RB10shear90.Jy(cutTime,:),...
    RB14shear90.Jy(cutTime,:),...
    ],1);

yValues3 = mean([...
    RB06shear60.Jy(cutTime,:),...
    RB02shear60.Jy(cutTime,:),...
    RB10shear60.Jy(cutTime,:),...
    RB14shear60.Jy(cutTime,:),...
    ],1);

yValues4 = mean([...
    RB06shear30.Jy(cutTime,:),...
    RB02shear30.Jy(cutTime,:),...
    RB10shear30.Jy(cutTime,:),...
    RB14shear30.Jy(cutTime,:),...
    ],1);

scatter(xValues,yValues1,300,'filled','k'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues1,1);
corr = corrcoef(xValues,yValues1);
Xint = P(2) / -(P(1));
xLimits = xlim; x1 = linspace(0,20); y1 = polyval(P,x1);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+40*xL(2)/100, yL(2)*70/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','k')
hold on

% yyaxis left
scatter(xValues,yValues2,300,'filled','b'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues2,1);
corr = corrcoef(xValues,yValues2);
Xint = P(2) / -(P(1));
xLimits = xlim; x2 = linspace(0,20); y2 = polyval(P,x2);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+40*xL(2)/100, yL(2)*67/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','b')


scatter(xValues,yValues3,300,'filled','g'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues3,1);
corr = corrcoef(xValues,yValues3);
Xint = P(2) / -(P(1));
xLimits = xlim; x3 = linspace(Xint,xLimits(2)+2); y3 = polyval(P,x3);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+40*xL(2)/100, yL(2)*61/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','g')

scatter(xValues,yValues4,300,'filled','r'); hold on
% xlim([5.5 16.5])
P = polyfit(xValues,yValues4,1);
corr = corrcoef(xValues,yValues4);
Xint = P(2) / -(P(1));
xLimits = xlim; x4 = linspace(Xint,xLimits(2)+2); y4 = polyval(P,x4);
% xlim([Xint,xLimits(2)])
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+40*xL(2)/100, yL(2)*58.5/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','r')

plot(x1,y1,'k--')
plot(x2,y2,'b--')
plot(x3,y3,'g--')
plot(x4,y4,'r--')

% yyaxis right
% scatter(xValues,yValues2,300,'filled');
% ylabel('Trailing \Delta Jx [J_0]','fontsize',14)
% yyaxis left
xlimits = xlim
xlim([0 15])
box on; grid on
xlabel('FS V_T + V_R [V_A]','fontsize',14)
ylabel('\Delta Jy [J_0]','fontsize',14)
% legend('location','southeast')
legend({'120°';'90°';'60°';'30°'},'location','southeast')
cutTime = mean(cutTime);
% title(strcat('Initial TD Thickness Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Ring Beam and TD Magnetic Shear t =',{' '},string(cutTime/2),{' '},': \Delta Jy'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','RingBeam_Shear_DeltaJy_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
%% Model
%Linear Regression Model
for i=1:1
cutTime = 20;
Data = [];
va = 48.95;
sinCoeff = 2/3*1/2;
cosCoeff = 2/3;

for cutTime = [8:16]
% Data = [Data;...
%      RB06shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*120), cosd(125/180*120), 08+06,cutTime./2;...
%      RB02shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*120), cosd(125/180*120), 08+02,cutTime./2;...
%      RB10shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*120), cosd(125/180*120), 08+10,cutTime./2;...
%      RB14shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*120), cosd(125/180*120), 08+14,cutTime./2;...
%      RB06shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*090), cosd(125/180*090), 08+06,cutTime./2;...
%      RB02shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*090), cosd(125/180*090), 08+02,cutTime./2;...
%      RB10shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*090), cosd(125/180*090), 08+10,cutTime./2;...
%      RB14shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*090), cosd(125/180*090), 08+14,cutTime./2;...
%      RB06shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*060), cosd(125/180*060), 08+06,cutTime./2;...
%      RB02shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*060), cosd(125/180*060), 08+02,cutTime./2;...
%      RB10shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*060), cosd(125/180*060), 08+10,cutTime./2;...
%      RB14shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*060), cosd(125/180*060), 08+14,cutTime./2;...
%      RB06shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*030), cosd(125/180*030), 08+06,cutTime./2;...
%      RB02shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*030), cosd(125/180*030), 08+02,cutTime./2;...
%      RB10shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*030), cosd(125/180*030), 08+10,cutTime./2;...
%      RB14shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(125/180*030), cosd(125/180*030), 08+14,cutTime./2;...
% ];
Data = [Data;...
     RB06shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*120), cosd(cosCoeff*120), 08+06,cutTime./2;...
     RB02shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*120), cosd(cosCoeff*120), 08+02,cutTime./2;...
     RB10shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*120), cosd(cosCoeff*120), 08+10,cutTime./2;...
     RB14shear120.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*120), cosd(cosCoeff*120), 08+14,cutTime./2;...
     RB06shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*090), cosd(cosCoeff*090), 08+06,cutTime./2;...
     RB02shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*090), cosd(cosCoeff*090), 08+02,cutTime./2;...
     RB10shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*090), cosd(cosCoeff*090), 08+10,cutTime./2;...
     RB14shear90.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*090), cosd(cosCoeff*090), 08+14,cutTime./2;...
     RB06shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*060), cosd(cosCoeff*060), 08+06,cutTime./2;...
     RB02shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*060), cosd(cosCoeff*060), 08+02,cutTime./2;...
     RB10shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*060), cosd(cosCoeff*060), 08+10,cutTime./2;...
     RB14shear60.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*060), cosd(cosCoeff*060), 08+14,cutTime./2;...
     RB06shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*030), cosd(cosCoeff*030), 08+06,cutTime./2;...
     RB02shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*030), cosd(cosCoeff*030), 08+02,cutTime./2;...
     RB10shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*030), cosd(cosCoeff*030), 08+10,cutTime./2;...
     RB14shear30.maxU(cutTime,:)./va, 0.12, 20, 10, sind(sinCoeff*030), cosd(cosCoeff*030), 08+14,cutTime./2;...
];

end
X = circshift(Data,-1,2);
X = array2table(X,'VariableNames',{'nfs','vfspara','vswpara','sinShear','cosShear','vfsperp','DeltaT','ExpSpeed'});
x=X;y  = x(:,end);x(:,6) = [];
% mdl = fitlm(X,'ExpSpeed ~ DeltaT:nfs:cosShear:vfspara + DeltaT:nfs:cosShear:vswpara +  DeltaT:nfs:vfsperp:sinShear');
mdl = fitlm(X,'ExpSpeed ~ DeltaT:nfs:cosShear:vfspara + DeltaT:nfs:cosShear:vswpara +  DeltaT:nfs:vfsperp:sinShear');
modelCoefficients = table2array(mdl.Coefficients); modelCoefficients = modelCoefficients(:,1);
end
%% Plot Model vs Expansion Speed
for i=1:1
x = [...
    calculateModelSpeed(0.12, 20, 10, 120, 08+06,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 120, 08+02,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 120, 08+10,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 120, 08+14,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 90, 08+06,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 90, 08+02,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 90, 08+10,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 90, 08+14,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 60, 08+06,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 60, 08+02,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 60, 08+10,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 60, 08+14,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 30, 08+06,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 30, 08+02,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 30, 08+10,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...
    calculateModelSpeed(0.12, 20, 10, 30, 08+14,cutTime./2,modelCoefficients(2),modelCoefficients(3),modelCoefficients(4),modelCoefficients(1));...

    ];

y = [...
    RB06shear120.maxU(cutTime,:);...
    RB02shear120.maxU(cutTime,:);...
    RB10shear120.maxU(cutTime,:);...
    RB14shear120.maxU(cutTime,:);...
    RB06shear90.maxU(cutTime,:);...
    RB02shear90.maxU(cutTime,:);...
    RB10shear90.maxU(cutTime,:);...
    RB14shear90.maxU(cutTime,:);...
    RB06shear60.maxU(cutTime,:);...
    RB02shear60.maxU(cutTime,:);...
    RB10shear60.maxU(cutTime,:);...
    RB14shear60.maxU(cutTime,:);...
    RB06shear30.maxU(cutTime,:);...
    RB02shear30.maxU(cutTime,:);...
    RB10shear30.maxU(cutTime,:);...
    RB14shear30.maxU(cutTime,:);...
    ]./va;

    figure; set(gcf,'color','w');
    
    scatter(x(1:4),y(1:4),100,'filled','k'); hold on; grid on; %xlim([0 4]); ylim([0 4])
    P1 = polyfit(x(1:4),y(1:4),1);
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P1,x1);

    scatter(x(5:8),y(5:8),100,'filled','b'); %xlim([0 4]); ylim([0 4])
    P2 = polyfit(x(5:8),y(5:8),1);
    xLimits = xlim; x2 = linspace(xLimits(1),xLimits(2)); y2 = polyval(P2,x2);
    
    scatter(x(9:12),y(9:12),100,'filled','g');
    P3 = polyfit(x(9:12),y(9:12),1);
    xLimits = xlim; x3 = linspace(xLimits(1),xLimits(2)); y3 = polyval(P3,x3);
    
    scatter(x(13:16),y(13:16),100,'filled','r');
    P4 = polyfit(x(13:16),y(13:16),1);
    xLimits = xlim; x4 = linspace(xLimits(1),xLimits(2)); y4 = polyval(P4,x4);

    plot(x1,y1,'k--')
    plot(x2,y2,'b--')
    plot(x3,y3,'g--')
    plot(x4,y4,'r--')

    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
    text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('120°:m=%1.2f',P1(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','k')
    text(xL(1)+xL(2)/100, yL(2)*94/100,sprintf('90°:m=%1.2f',P2(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','b')
    text(xL(1)+xL(2)/100, yL(2)*89/100,sprintf('60°:m=%1.2f',P3(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','g')
    text(xL(1)+xL(2)/100, yL(2)*84/100,sprintf('30°:m=%1.2f',P4(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14,'color','r')

%     title('Exp. vs Model V for RB Shear at t=6 \Omega_i, sin(2/3θ)vpara cos(2/3θ)vperp','fontsize',14)
        title('cos(2/3θ)vpara + sin(2/3θ * 3/4)vperp','fontsize',14)

    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_RBshear'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
end
%% Functions
function [modelSpeed] = calculateModelSpeed(nfs_setup,fsSpeed_setup,swSpeed_setup,shear_setup,fsThermal_setup,time,...
    vfsparaCoeff,vswparaCoeff,vfsperpCoeff,intercept)
sinCoeff=2/3*1/2;
cosCoeff=2/3;
modelSpeed = time * nfs_setup * (...
  vfsparaCoeff*cosd(sinCoeff*shear_setup)*fsSpeed_setup +...
  vswparaCoeff*cosd(sinCoeff*shear_setup)*swSpeed_setup +...
  vfsperpCoeff*sind(cosCoeff*shear_setup)*fsThermal_setup +...
   +intercept);
end
%% Get Parameters
function [Run] = getCompressionProperties(outputFolder,dt,outputSteps,time,xcut,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)

%Load the data for the Run
timeFrame = time/(dt*outputSteps);
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
RunNumber= outputFolder;

[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory);
va = 48.95;
[X,Z,X2,Z2] = scale_Data(qx,qz);
q=1.6e-19;
moverq=1.0378e-8;
lambda_i = (qx(2)-qx(1));
E0 = (5e-9)/moverq* va;
J0 = (5e-9)/ ((lambda_i));
J0 =(5e-9/(moverq))/ (qx(2)-qx(1));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));
B0 = 5e-9/moverq;
kb = 8.617*10^-5;
if dt == 0.01
    timeperFrameinSeconds = 25.* 4.15125e-2/2;
else
timeperFrameinSeconds = 25.* 4.15125e-2;
end
%Bdata
[Bdata] = read_Plasma('B',timeFrame,nx,ny,nz,outputDirectory);
[Bxdata_interp0] = (interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2));
[Bydata_interp0] = ((interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2)));
[Bzdata_interp0] = ((interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2)));
%Ndata
[ndata] = read_Plasma('n',timeFrame,nx,ny,nz,outputDirectory);
%Edata
[Edata] = read_Plasma('E',timeFrame,nx,ny,nz,outputDirectory);
% Edata = face_to_center(Edata);
%Jdata
[Jdata] = read_Plasma('Current',timeFrame,nx,ny,nz,outputDirectory);
%nswdata
[n_cold_data] = read_Plasma('n_cold',timeFrame,nx,ny,nz,outputDirectory);
[up_cold_data] = read_Plasma('up_cold',timeFrame,nx,ny,nz,outputDirectory);
[temp_cold_data] = read_Plasma('temp_cold',timeFrame,nx,ny,nz,outputDirectory);
[temp_mixed_data] = read_Plasma('temp_mixed',timeFrame,nx,ny,nz,outputDirectory);
[pdata] = read_Plasma('Momentum',timeFrame,nx,ny,nz,outputDirectory);

%Nfsdata
[n_mixed_data] = read_Plasma('n_mixed',timeFrame,nx,ny,nz,outputDirectory);
[up_mixed_data] = read_Plasma('up_mixed',timeFrame,nx,ny,nz,outputDirectory);
[uedata] = read_Plasma('ue',timeFrame,nx,ny,nz,outputDirectory);

[ndata_interp] = interpolate_Data(ndata,1,timeFrame,nx,nz,X,Z,X2,Z2);
[ndata_interp0] = interpolate_Data(ndata,1,1,nx,nz,X,Z,X2,Z2);
n0 = mean(ndata_interp0(floor(nz-nz/4):nz-1,2:end-1),'all');
n0 = imgaussfilt(n0,1);

[temp_cold_data_interp0] = (interpolate_Data(temp_cold_data,1,1,nx,nz,X,Z,X2,Z2));
t0 = mean(temp_cold_data_interp0(floor(nz-nz/4):nz-1,2:end-1),'all');
t0 = imgaussfilt(t0,1);

    
Btcdata = edge_to_center(Bdata);
uexBdata = crossf2(uedata,Btcdata);

[Exdata_interp0] = ((interpolate_Data(Edata,1,1,nx,nz,X,Z,X2,Z2)));
[Eydata_interp0] = ((interpolate_Data(Edata,2,1,nx,nz,X,Z,X2,Z2)));
[Ezdata_interp0] = ((interpolate_Data(Edata,3,1,nx,nz,X,Z,X2,Z2)));


uexBx0 = interpolate_Data(uexBdata,1,1,nx,nz,X,Z,X2,Z2);
uexBy0 = interpolate_Data(uexBdata,2,1,nx,nz,X,Z,X2,Z2);
uexBz0 = interpolate_Data(uexBdata,3,1,nx,nz,X,Z,X2,Z2);

Jperpx_mixed_previous = 0;
Jperpy_mixed_previous = 0;
maxJxTime = 0;
maxdeltaJx = 0;
maxdeltaJy = 0;
peakN=[];
SWTEmax = [];
maxUz = 0;
minUx = 0;
expSpeed = [];
outerRightEdge = [];
outerLeftEdge = [];
boundarySpeed = [];
uz=[];
Width = [];
Area = [];
Uzatmax = [];
maxU = [];
nfsatmaxU = [];
timeStart = 2;
% EnergyFig = figure;
%  set(gcf,'color','w');

[n_cold_data_interp0] = (interpolate_Data(n_cold_data,1,1,nx,nz,X,Z,X2,Z2));

    upx_cold_data_interp0 = (interpolate_Data(up_cold_data,1,1,nx,nz,X,Z,X2,Z2));
    upy_cold_data_interp0 = (interpolate_Data(up_cold_data,2,1,nx,nz,X,Z,X2,Z2));
    upz_cold_data_interp0 = (interpolate_Data(up_cold_data,3,1,nx,nz,X,Z,X2,Z2));
    
    upx_data_interp0 = (interpolate_Data(pdata,1,1,nx,nz,X,Z,X2,Z2));
    upy_data_interp0 = (interpolate_Data(pdata,2,1,nx,nz,X,Z,X2,Z2));
    upz_data_interp0 = (interpolate_Data(pdata,3,1,nx,nz,X,Z,X2,Z2));    

 %Calculate quantities at each time
for i=1:timeFrame
    [ndata_interp] = interpolate_Data(ndata,1,i,nx,nz,X,Z,X2,Z2);
    [n_cold_data_interp] = (interpolate_Data(n_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    upx_cold_data_interp = (interpolate_Data(up_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_cold_data_interp = (interpolate_Data(up_cold_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_cold_data_interp = (interpolate_Data(up_cold_data,3,i,nx,nz,X,Z,X2,Z2));
    
    upx_data_interp = (interpolate_Data(pdata,1,i,nx,nz,X,Z,X2,Z2));
    upy_data_interp = (interpolate_Data(pdata,2,i,nx,nz,X,Z,X2,Z2));
    upz_data_interp = (interpolate_Data(pdata,3,i,nx,nz,X,Z,X2,Z2));
    
    avgvz=mean(upz_cold_data_interp(:,xcut));

    [Bxdata_interp] = (interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2));
    [Bydata_interp] = ((interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp] = ((interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2)));
    Bmag = ( (Bxdata_interp).^2 + (Bydata_interp).^2 + (Bzdata_interp).^2 ).^(1/2)/B0 ;%- ( (Bxdata_interp0).^2 + (Bydata_interp0).^2 + (Bzdata_interp0).^2 ).^(1/2)/B0;
    
    
    [deltaJxdata_interp] = (((interpolate_Data(Jdata,1,i,nx,nz,X,Z,X2,Z2))-1*(interpolate_Data(Jdata,1,1,nx,nz,X,Z,X2,Z2)))./J0);%.*ndata_interp.*alpha.*n0;
    [deltaJydata_interp] = (((interpolate_Data(Jdata,2,i,nx,nz,X,Z,X2,Z2))-1*(interpolate_Data(Jdata,2,1,nx,nz,X,Z,X2,Z2)))./J0);%.*ndata_interp.*alpha.*n0;
    [deltaJzdata_interp] = ((interpolate_Data(Jdata,3,i,nx,nz,X,Z,X2,Z2))./J0);%.*ndata_interp.*alpha.*n0;

    
    [Exdata_interp] = ((interpolate_Data(Edata,1,i,nx,nz,X,Z,X2,Z2)))/E0;
    [Eydata_interp] = ((interpolate_Data(Edata,2,i,nx,nz,X,Z,X2,Z2)))/E0;
    [Ezdata_interp] = ((interpolate_Data(Edata,3,i,nx,nz,X,Z,X2,Z2)))/E0;
    
    [Exdata_interp0] = ((interpolate_Data(Edata,1,1,nx,nz,X,Z,X2,Z2)))/E0;
    [Eydata_interp0] = ((interpolate_Data(Edata,2,1,nx,nz,X,Z,X2,Z2)))/E0;
    [Ezdata_interp0] = ((interpolate_Data(Edata,3,1,nx,nz,X,Z,X2,Z2)))/E0;
    
    uexBx = interpolate_Data(uexBdata,1,i,nx,nz,X,Z,X2,Z2);
    uexBy = interpolate_Data(uexBdata,2,i,nx,nz,X,Z,X2,Z2);
    uexBz = interpolate_Data(uexBdata,3,i,nx,nz,X,Z,X2,Z2);
    
    [n_mixed_data_interp] = (interpolate_Data(n_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    upx_mixed_data_interp = (interpolate_Data(up_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_mixed_data_interp = (interpolate_Data(up_mixed_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_mixed_data_interp = (interpolate_Data(up_mixed_data,3,i,nx,nz,X,Z,X2,Z2));
    
    [uex_tot] = -(interpolate_Data(uedata,1,i,nx,nz,X,Z,X2,Z2));
    [uey_tot] = -(interpolate_Data(uedata,2,i,nx,nz,X,Z,X2,Z2));
    [uez_tot] = -(interpolate_Data(uedata,3,i,nx,nz,X,Z,X2,Z2));
    
    [uex_tot0] = -(interpolate_Data(uedata,1,1,nx,nz,X,Z,X2,Z2));
    [uey_tot0] = -(interpolate_Data(uedata,2,1,nx,nz,X,Z,X2,Z2));
    [uez_tot0] = -(interpolate_Data(uedata,3,1,nx,nz,X,Z,X2,Z2));
    [temp_cold_data_interp] = (interpolate_Data(temp_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    [temp_mixed_data_interp] = (interpolate_Data(temp_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    %Mixed FS Momentum
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    [mixed_parax,mixed_paray,mixed_paraz,mixed_perpx,mixed_perpy,mixed_perpz]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp,ppy_mixed_data_interp,ppz_mixed_data_interp);
    
    delta_mixed_perpx = (mixed_perpx).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpy = (mixed_perpy).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpz = (mixed_perpz).*10^3 * 10^-9.*q./nv0;
    
    
    %Calculate cartesian Currents
    Jx = (ndata_interp.*(upx_data_interp-uex_tot) - ndata_interp0.*(upx_data_interp0-uex_tot0)).*10^3 * 10^-9.*q./nv0;
    Jy = (ndata_interp.*(upy_data_interp-uey_tot) - ndata_interp0.*(upy_data_interp0-uey_tot0)).*10^3 * 10^-9.*q./nv0;
    Jz = (ndata_interp.*(upz_data_interp-uez_tot) - ndata_interp0.*(upz_data_interp0-uez_tot0)).*10^3 * 10^-9.*q./nv0;

    Jx_x(i,:) = Jx(:,xcut);
    Jy_x(i,:) = Jy(:,xcut);
    Jz_x(i,:) = Jz(:,xcut);
    
    J_x(i,:) = (Jx(:,xcut).^2 + Jy(:,xcut).^2 +Jz(:,xcut).^2).^(1/2);

   
    mixed_Jx = n_mixed_data_interp.*(upx_mixed_data_interp - uex_tot).*10^3 * 10^-9.*q./nv0;
    mixed_Jy = n_mixed_data_interp.*(upy_mixed_data_interp - uey_tot).*10^3 * 10^-9.*q./nv0;
    mixed_Jz = n_mixed_data_interp.*(upz_mixed_data_interp - uez_tot).*10^3 * 10^-9.*q./nv0;
    
    cold_Jx0 = n_cold_data_interp0.*(upx_cold_data_interp0-uex_tot0).*10^3 * 10^-9.*q./nv0;
    cold_Jy0 = n_cold_data_interp0.*(upy_cold_data_interp0-uey_tot0).*10^3 * 10^-9.*q./nv0;
    cold_Jz0 = n_cold_data_interp0.*(upz_cold_data_interp0-uez_tot0).*10^3 * 10^-9.*q./nv0;

    cold_Jx = n_cold_data_interp.*(upx_cold_data_interp-uex_tot).*10^3 * 10^-9.*q./nv0-cold_Jx0;
    cold_Jy = n_cold_data_interp.*(upy_cold_data_interp-uey_tot).*10^3 * 10^-9.*q./nv0-cold_Jy0;
    cold_Jz = n_cold_data_interp.*(upz_cold_data_interp-uez_tot).*10^3 * 10^-9.*q./nv0-cold_Jz0;
    
    
    mixed_Jx_x(i,:) = mixed_Jx(:,xcut);
    mixed_Jy_x(i,:) = mixed_Jy(:,xcut);
    mixed_Jz_x(i,:) = mixed_Jz(:,xcut);
    
    mixed_J_x(i,:) = (mixed_Jx(:,xcut).^2 + mixed_Jy(:,xcut).^2 + mixed_Jz(:,xcut).^2).^(1/2);
    
    cold_Jx_x(i,:) = cold_Jx(:,xcut);
    cold_Jy_x(i,:) = cold_Jy(:,xcut);
    cold_Jz_x(i,:) = cold_Jz(:,xcut);
    
    cold_J_x(i,:) = (cold_Jx(:,xcut).^2 + cold_Jy(:,xcut).^2 + cold_Jz(:,xcut).^2).^(1/2);
    
    
    
    
    
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;
    
    [electron_parax_mixed,electron_paray_mixed,electron_paraz_mixed,electron_perpx_mixed,electron_perpy_mixed,electron_perpz_mixed]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_mixed,pey_mixed,pez_mixed);
    
    delta_electron_perpx_mixed = (electron_perpx_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_mixed = (electron_perpy_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz_mixed = (electron_perpz_mixed).*10^3 * 10^-9.*-q./nv0;
    
    
    
    
    Jperpx_mixed = delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx_mixed(2:end-1,2:end-1);
    Jperpy_mixed = delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy_mixed(2:end-1,2:end-1);
    

    if i > timeStart

        del_Jperpx = ( max(abs(Jperpx_mixed(:,xcut))) - max(abs(Jperpx_mixed_previous(:,xcut))) );% ./ (( max(abs(Jperpx_mixed(:,xcut))) + max(abs(Jperpx_mixed_previous(:,xcut))) )./2);
        del_Jperpy = ( max(abs(Jperpy_mixed(:,xcut))) - max(abs(Jperpy_mixed_previous(:,xcut))) );% ./ (( max(abs(Jperpy_mixed(:,xcut))) + max(abs(Jperpy_mixed_previous(:,xcut))) )./2);

        if del_Jperpx  > maxdeltaJx
            maxdeltaJx =del_Jperpx;
            maxJxTime = i;
        end
        
        if del_Jperpy  > maxdeltaJy
            maxdeltaJy = del_Jperpy;
        end
%         scatter(i,del_Jperpx); hold on
    end
        Jperpx_mixed_previous = Jperpx_mixed;
        Jperpy_mixed_previous = Jperpy_mixed;
    
    if i ==timeFrame
        [maxJx,~] = max(abs(Jperpx_mixed(:,xcut)));
        [maxJy,~] = max(abs(Jperpy_mixed(:,xcut)));
    end
    JxperTime(i,:) = max(abs(Jperpx_mixed(:,xcut)));
    JyperTime(i,:) = max(abs(Jperpy_mixed(:,xcut)));
    %Calculate JdotE SW


    
    TE_cold(i,:) = n_cold_data_interp(:,xcut).*temp_cold_data_interp(:,xcut).*10^-9.*q -...
        q.*n_cold_data_interp0(:,xcut).*temp_cold_data_interp0(:,xcut).*10^-9 ;
    
    TE_coldallx(i,:) = sum(n_cold_data_interp(:,:).*temp_cold_data_interp(:,:).*10^-9.*q -...
        q.*n_cold_data_interp0(:,:).*temp_cold_data_interp0(:,:).*10^-9,2) ;
    
    
    T_cold(i,:) = temp_cold_data_interp(:,xcut)./t0 - temp_cold_data_interp0(:,xcut)./t0;
   
    
    upx_cold_data_interp10 = (interpolate_Data(up_cold_data,1,8,nx,nz,X,Z,X2,Z2));
    upy_cold_data_interp10 = (interpolate_Data(up_cold_data,2,8,nx,nz,X,Z,X2,Z2));
    upz_cold_data_interp10 = (interpolate_Data(up_cold_data,3,8,nx,nz,X,Z,X2,Z2));
    
    Eswx0=Exdata_interp0 + (upy_cold_data_interp0.*Bzdata_interp0-upz_cold_data_interp0.*Bydata_interp0);
    Eswy0=Eydata_interp0 + (upz_cold_data_interp0.*Bxdata_interp0-upx_cold_data_interp0.*Bzdata_interp0);
    Eswz0=Ezdata_interp0 + (upx_cold_data_interp0.*Bydata_interp0-upy_cold_data_interp0.*Bxdata_interp0);

    Eswx=Exdata_interp + (upy_cold_data_interp0.*Bzdata_interp-upz_cold_data_interp0.*Bydata_interp)/(va*B0);%-Eswx0;
    Eswy=Eydata_interp + (upz_cold_data_interp0.*Bxdata_interp-upx_cold_data_interp0.*Bzdata_interp)/(va*B0);%-Eswy0;
    Eswz=Ezdata_interp + (upx_cold_data_interp0.*Bydata_interp-upy_cold_data_interp0.*Bxdata_interp)/(va*B0);%-Eswz0;
    
%     Eswx=Exdata_interp + (0.*Bzdata_interp-0.*Bydata_interp)/(va*B0);%-Eswx0;
%     Eswy=Eydata_interp + (0.*Bxdata_interp-swSpeed_setup*va.*0)/(va*B0);%-Eswy0;
%     Eswz=Ezdata_interp + (swSpeed_setup*va.*Bydata_interp-0.*Bxdata_interp)/(va*B0);%-Eswz0;
    
    
    pex_cold = n_cold_data_interp .* uex_tot;
    pex_cold0 = n_cold_data_interp0 .* uex_tot0;
    pey_cold = n_cold_data_interp .* uey_tot;
    pey_cold0= n_cold_data_interp0 .* uey_tot0;
    pez_cold = n_cold_data_interp .* uez_tot;
    pez_cold0 = n_cold_data_interp0 .* uez_tot0;
    
    [electron_parax_cold,electron_paray_cold,electron_paraz_cold,electron_perpx_cold,electron_perpy_cold,electron_perpz_cold]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold,pey_cold,pez_cold);
    
    [electron_parax_cold,electron_paray_cold,electron_paraz_cold,electron_perpx_cold0,electron_perpy_cold0,electron_perpz_cold0]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold0,pey_cold0,pez_cold0);
    
    
    [ppx_cold_data_interp] = (n_cold_data_interp.*(upx_cold_data_interp)) ;
    ppx_cold_data_interp0 = n_cold_data_interp0.*(upx_cold_data_interp0);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_cold_data_interp] = (n_cold_data_interp.*(upy_cold_data_interp));
    ppy_cold_data_interp0 = n_cold_data_interp0.*(upy_cold_data_interp0);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_cold_data_interp] = (n_cold_data_interp.*(upz_cold_data_interp));%.*((n_mixed_data_interp./n0 > nFS_threshold));
    ppz_cold_data_interp0 = n_cold_data_interp0.*(upz_cold_data_interp0);
    
    
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx0,cold_perpy0,cold_perpz0]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp0,ppy_cold_data_interp0,ppz_cold_data_interp0);
    
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx,cold_perpy,cold_perpz]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp,ppy_cold_data_interp,ppz_cold_data_interp);

    %Non SW frame E
%     JswdotEx(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     JswdotEy(i,:) = ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     
%     
%     
%     JswdotE(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))+ ...
%                    ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))+ ...
%                    ((ppz_cold_data_interp(:,xcut)-pez_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));           
%SW Frame E
JswdotEx(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).* (E0) * moverq*1000)...
    *timeperFrameinSeconds;% 0.5;
JswdotEy(i,:) = ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).* (E0) * moverq*1000)...
    *timeperFrameinSeconds;% 0.5;



JswdotE(i,:) = (((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000)+ ...
    ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000)+ ...
    ((ppz_cold_data_interp(:,xcut)-pez_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswz(:,xcut).*E0.*moverq.*1000))...
    * timeperFrameinSeconds;

JswdotEallx(i,:) = sum( (((ppx_cold_data_interp(:,:)-pex_cold(:,:)).*10^3 * 10^-9.*q).*(Eswx(:,:).*E0.*moverq.*1000)+ ...
    ((ppy_cold_data_interp(:,:)-pey_cold(:,:)).*10^3 * 10^-9.*q).*(Eswy(:,:).*E0.*moverq.*1000)+ ...
    ((ppz_cold_data_interp(:,:)-pez_cold(:,:)).*10^3 * 10^-9.*q).*(Eswz(:,:).*E0.*moverq.*1000))...
    * timeperFrameinSeconds,2);




%     JswdotE(i,:) = ((cold_perpx(:,xcut)-cold_perpx0(:,xcut)+electron_perpx_cold(:,xcut)-electron_perpx_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))+ ...
%                    ((cold_perpy(:,xcut)-cold_perpy0(:,xcut)+electron_perpy_cold(:,xcut)-electron_perpy_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))+ ...
%                    ((cold_perpz(:,xcut)-cold_perpz0(:,xcut)+electron_perpz_cold(:,xcut)-electron_perpz_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));


%Calculate nsw*vz^2
%Keep track of each time's value

%NonSwFrame
%     ke_cold(i,:) = n_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut);
    %SwFrame
    ke_cold(i,:) = (1e-9).*(0.5).*(1.67e-27).*1000^2.*n_cold_data_interp(:,xcut).*(...
        (upx_cold_data_interp(:,xcut) - upx_cold_data_interp0(:,xcut)).*(upx_cold_data_interp(:,xcut) - upx_cold_data_interp0(:,xcut)) + ...
        (upy_cold_data_interp(:,xcut) - upy_cold_data_interp0(:,xcut)).*(upy_cold_data_interp(:,xcut) - upy_cold_data_interp0(:,xcut)) +...
        (upz_cold_data_interp(:,xcut) - upz_cold_data_interp0(:,xcut)).*(upz_cold_data_interp(:,xcut) - upz_cold_data_interp0(:,xcut)) );
    
    ke_coldallx(i,:) = sum((1e-9).*(0.5).*(1.67e-27).*1000^2.*(n_cold_data_interp(:,:)).*(...
        (upx_cold_data_interp(:,:) - upx_cold_data_interp0(:,:)).*(upx_cold_data_interp(:,:) - upx_cold_data_interp0(:,:)) + ...
        (upy_cold_data_interp(:,:) - 0*upy_cold_data_interp0(:,:)).*(upy_cold_data_interp(:,:) - 0*upy_cold_data_interp0(:,:)) +...
        (upz_cold_data_interp(:,:) - 1*upz_cold_data_interp10(:,:)).*(upz_cold_data_interp(:,:) - 1*upz_cold_data_interp10(:,:)) ),2);
    
    
   
%     
%         ke_coldallx0(i,:) = sum((1e-9).*(0.5).*(1.67e-27).*1000^2.*(n_cold_data_interp0(:,:)).*(...
%         (upx_cold_data_interp0(:,:)).*(upx_cold_data_interp0(:,:))),2);
%     
%         ke_coldallx(i,:) = sum((1e-9).*(0.5).*(1.67e-27).*1000^2.*(n_cold_data_interp(:,:)).*(...
%         (upx_cold_data_interp(:,:)).*(upx_cold_data_interp(:,:)) + ...
%         (upy_cold_data_interp(:,:)).*(upy_cold_data_interp(:,:)) +...
%         (upz_cold_data_interp(:,:)).*(upz_cold_data_interp(:,:)) ),2)-ke_coldallx0(i,:)';
% %     %units of 0.5* kg * 1/m^3 * m^2/s^2
%ke_cold0(i,:) = n_cold_data_interp0(:,xcut).*(...
% %         (upx_cold_data_interp0(:,xcut)).^2 + ...
% %          (upy_cold_data_interp0(:,xcut)).^2 +...
% %          (upz_cold_data_interp0(:,xcut)).^2  );
%     ke_cold(i,:) = n_cold_data_interp(:,xcut).*(...
%         (upx_cold_data_interp(:,xcut)).^2 + ...
%         (upy_cold_data_interp(:,xcut)).^2 +...
%         (upz_cold_data_interp(:,xcut)).^2  );% -...
% %         n_cold_data_interp0(:,xcut).*(...
% %         (upx_cold_data_interp0(:,xcut)).^2 + ...
% %          (upy_cold_data_interp0(:,xcut)).^2 +...
% %          (upz_cold_data_interp0(:,xcut)).^2  );
%     
% 
    maxUz(i,:) = max(upz_cold_data_interp(:,xcut));
    [maxU(i,:),indexofmaxU] = max(((upx_cold_data_interp(:,xcut)-upx_cold_data_interp0(:,xcut)).^2 + upz_cold_data_interp(:,xcut).^2).^(1/2));
    nfsatmaxU(i,:) = n_mixed_data_interp(indexofmaxU,xcut)./n0;
    minUx(i,:) = min(upx_cold_data_interp(:,xcut));
    minB(i,:) = min(Bmag(:,xcut));
    
    %Calculate Jfs dot E
    %Keep track of each time's value
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;
    
    %Nonsw Frame
%     JfsdotEx(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     JfsdotEy(i,:) = ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     
%     
%     JfsdotE(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut)) + ...
%                    ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut)) + ...
%                    ((ppz_mixed_data_interp(:,xcut)-pez_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
    %SW Frame
    JfsdotEx(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000)...
               .*timeperFrameinSeconds;% 0.5 ;
    JfsdotEy(i,:) = ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000)...
         .*timeperFrameinSeconds;% 0.5 ;
    
    
    
    
    JfsdotE(i,:) = (((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000) + ...
                   ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000) + ...
                   ((ppz_mixed_data_interp(:,xcut)-pez_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswz(:,xcut).*E0.*moverq.*1000))*timeperFrameinSeconds;
               
               
    JfsdotEallx(i,:) = sum((((ppx_mixed_data_interp(:,:)-pex_mixed(:,:)).*10^3 * 10^-9.*q).*(Eswx(:,:).*E0.*moverq.*1000) + ...
                   ((ppy_mixed_data_interp(:,:)-pey_mixed(:,:)).*10^3 * 10^-9.*q).*(Eswy(:,:).*E0.*moverq.*1000) + ...
                   ((ppz_mixed_data_interp(:,:)-pez_mixed(:,:)).*10^3 * 10^-9.*q).*(Eswz(:,:).*E0.*moverq.*1000))*timeperFrameinSeconds,2);        
%     JfsdotE(i,:) = ((mixed_perpx(:,xcut)+electron_perpx_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut)) + ...
%                    ((mixed_perpy(:,xcut)+electron_perpy_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut)) + ...
%                    ((mixed_perpz(:,xcut)+electron_perpz_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
%     
    
    
 
    
    %Jfs * vxBsw
    2*50*1000*5e-9 * 0.075*5e6*30*50*1000*q*sin(45)*0.5;
    0.075*5e6*q*30*50*1000*2*50*1000*5e-9;
    0.05051*5e6*q*(-25.3951*va*1000)*63.316*1000*0.1865*10^-9;
    % KE Sw
    0.5 * 1.67e-27 * 5e6 * (2 * 50 * 1000).^2 * 2.5*va;
    
    
    [Nmax,~] = max(n_cold_data_interp(:,xcut));
    [Nmax2,Nmax2Index] = max(n_cold_data_interp((floor(nz/2)-100):floor(nz/2),xcut));

    peakN(i,:) = Nmax;
    peakN2(i,:) = Nmax2;
    peakN2Index(i,:) = Nmax2Index;
    [Nmax,NmaxIndex] = max(n_cold_data_interp(:,xcut));
    
    Jxmin1(i,:) = max(deltaJxdata_interp( (floor(nz/2)-100):(floor(nz/2)-8),xcut));
    Jxmin2(i,:) = max(deltaJxdata_interp( (floor(nz/2)):(floor(nz/2)+100),xcut));
    
    Jymin1(i,:) = max(deltaJydata_interp( (floor(nz/2)-100):(floor(nz/2)-8),xcut));
    Jymin2(i,:) = max(deltaJydata_interp( (floor(nz/2)):(floor(nz/2)+100),xcut));    
    
    SWTEmax(i,:) = max(TE_cold(i,:));
    Uzatmax(i) = upz_cold_data_interp(NmaxIndex,xcut);
    
    
    Ufsatmax(i) =  ( (upx_mixed_data_interp(NmaxIndex,xcut) - uex_tot(NmaxIndex,xcut)).^2 +...
        (upy_mixed_data_interp(NmaxIndex,xcut) - uey_tot(NmaxIndex,xcut)).^2 +...;
        (upz_mixed_data_interp(NmaxIndex,xcut) - uez_tot(NmaxIndex,xcut)).^2).^(1/2);
    
    Ufsmax(i) = max( (upx_mixed_data_interp(:,xcut) - uex_tot(:,xcut)).^2 +...
        (upy_mixed_data_interp(:,xcut) - uey_tot(:,xcut)).^2 +...;
        (upz_mixed_data_interp(:,xcut) - uez_tot(:,xcut)).^2).^(1/2);
    
    
%     figure; title('uz vs time for n=' + string(nfs_setup))
    %         plot([1:32].*timeperFrameinSeconds,Uzatmax./va)
    %     plot KE_cold of boundary at each time step
%     i=60
%     figure;%(EnergyFig)
%     hold off
%     %     yyaxis left
%     yyaxis left
%     plot(ke_coldallx(i,:)./(nx*lambda_i*1000*1*lambda_i*1000),'b-','linewidth',1.5); hold on
%     plot(sum(JswdotEallx(1:i,:))./(nx*lambda_i*1000*1*lambda_i*1000),'b--','linewidth',1.5)
% %     plot(TE_coldallx(i,:)./(nx*lambda_i*1000*1*lambda_i*1000),'b-.','linewidth',1.4);
%     %     yyaxis right
%     %     plot(JfsdotE(i,:)); %0.5 = outpuSteps * dt. deltaT
%     plot(sum(JfsdotEallx(1:i,:))./(nx*lambda_i*1000*1*lambda_i*1000),'r--','linewidth',1.5)
%     title('Energy Density along Z at t=15')
%     ylabel('kg/(m s^2)')
%     xlabel('z [\lambda_i]')
%     xlim([nz/2-50 nz/2+50])
%     grid on
%     yyaxis right
%     hold off
%     plot(sum(Bmag(:,:),2)./nx,'linewidth',1)
%     ylabel('\DeltaB / nx [B0]')
% %     legend({'SW KE','SW \SigmaJ\cdotE\Deltat','SW \DeltaTE','FS \SigmaJ\cdotE\Deltat','\Delta|B|'})
%         legend({'SW KE','SW \SigmaJ\cdotE\Deltat','FS \SigmaJ\cdotE\Deltat','\Delta|B|'})
% % 
%     
%      yyaxis left; ylim(10^-22.*[-4 4])
%      yyaxis right; ylim([-1 1])
%     
    JswdotEallxz(i) = sum(sum(JswdotEallx)).*(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
    ke_coldallxz(i) = sum(ke_coldallx(i,:)).*(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
    JfsdotEallxz(i) = sum(sum(JfsdotEallx)).*(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
%     
%     
%     plot(TE_cold(i,:),'linewidth',1.4);
%     
%     ylabel('\DeltaTE [kg/(m s^2)]')
%     legend({'SW KE','SW \SigmaJ\cdotE\Deltat','FS \SigmaJ\cdotE\Deltat','\DeltaTE'})
    
% expSpeed(i,:) = sqrt(nfs_setup) * sqrt(1-1/(peakN(i,:)/n0)) *...
%     ( (swSpeed_setup + fsSpeed_setup) * sind(shear_setup/2) + fsThermal_setup*cosd(shear_setup/2) );

expSpeed(i,:) = sqrt(nfs_setup) * sqrt(1-1/(peakN(i,:)/n0)) *...
    ( (swSpeed_setup + fsSpeed_setup) * sind(shear_setup/2) + fsThermal_setup );


JfsdotEsw(i,:) = timeperFrameinSeconds*n_mixed_data_interp(:,xcut)./n0.*5e6.*q.*...
       ((upx_cold_data_interp(:,xcut)+abs(upx_mixed_data_interp(:,xcut))).*1000)....
       .*(upz_cold_data_interp(:,xcut).*1000.*Bydata_interp(:,xcut)).*moverq;
%For comparing values
if i==0
    
    %JfsdotE vs SW KE
   figure; 
   title('JfsdotE vs SW KE'); 
   hold on; 
   plot(JfsdotEsw(i,:) );
   plot(ke_cold(i,:))
    yyaxis right
     hold off
     plot(Bmag(:,xcut),'k--','linewidth',1)
     ylabel('\DeltaB [B0]')
   xlim([151 249])
   legend({'J_{fs}UzBy','KE_{sw}','\DeltaB'})
   grid on
   
   %Area of JdotE vs area of SW KE
   figure;
   title('Area of JfsdotEsw vs KE sw'); hold on;
   plot(sum(JfsdotEsw,2));
   plot(sum(ke_cold,2));
   legend({'J_{fs}UzBy','KE_{sw}'},'Location','Northwest')
   
   %n and uz
   figure; title('density and uz'); hold on
   yyaxis left
   plot(n_cold_data_interp(:,xcut)./n0); 
   ylabel('[n0]')
   yyaxis right
   plot(upz_cold_data_interp(:,xcut)./va);
   ylabel('[va]')
   yyaxis left
   xlim([151 249])
   grid on
   legend({'n_{sw}','uz_{sw}'})
   
   
   %Exp Speed
   figure; title('Boundary Position'); hold on
   plot(outerRightEdge);
   ylabel('Z Pos')
    figure; title('Boundary Speed'); hold on;
    plot(boundarySpeed);
    ylabel('[km/s]')
   
   %FS Gyroradius
     fsvperp = (temp_mixed_data_interp(:,xcut).*q./(1.67e-27*1e6).*3).^(1/2);
     fsperp_gyro_initial= 1.67e-27.*(8.*va.*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.925*1000);
     
     fsperp_gyro= 1.67e-27.*(fsvperp.*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.925*1000);
     
     fspara_gyro= 1.67e-27.*((upx_cold_data_interp(:,xcut)+abs(upx_mixed_data_interp(:,xcut))).*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.825*1000);
  
     figure; title('fs gyroradius'); hold on
     
     plot(fsperp_gyro_initial);hold on
     plot(real(fsperp_gyro));
     plot(fspara_gyro);hold on
     xlim([151 249])
     yyaxis right
     hold off
     plot(Bmag(:,xcut),'k--','linewidth',1)
     ylabel('\DeltaB [B0]')
     legend({'v_{perp,i}','v_{perp}','v_{para}','\DeltaB'})
     grid on
     
     
     %Plot Width And Area
     figure; 
     title('Boundary Width'); hold on
     plot(Width);
     ylabel('\lambda_i');
     figure; 
     title('Boundary Area'); hold on
     plot(Area./n0);
     ylabel('n0 \lambda_i')
     figure; title('n'); hold on
for i=1:4:timeFrame
    plot(n(i,:));
end
     xlim([151 249]);
     
     figure; plot(upx_mixed_data_interp(:,xcut)./va - uex_tot(:,xcut)./va); 
     hold on; 
     plot(upy_mixed_data_interp(:,xcut)./va - uey_tot(:,xcut)./va); 
     plot(upz_mixed_data_interp(:,xcut)./va - uez_tot(:,xcut)./va)
     xlim([150 250])
     yyaxis right; plot(n_cold_data_interp(:,xcut)./n0);
end
%
% if nz==800
%     ndata_interp= ndata_interp(200:600,:);
%     nz=400;
% end
n_cold_data_interp = imgaussfilt(n_cold_data_interp,1);
% ndata_interp=ndata_interp./n0;
[~,peakPos] = max(n_cold_data_interp(100:300,xcut));
peakPos=peakPos+100;
compressionRight = (nz-2)/2;
for j=peakPos:+1:nz
    
    if n_cold_data_interp(j,xcut)/n0 < 1.2
        compressionRight = j;
        break;
        
    end
end
outerRightEdge(i) = compressionRight;

if i > 1
    boundarySpeed(i) = 50.825.*(outerRightEdge(i) - outerRightEdge(i-1))/(25.*4.15125e-2); %Units of km / s
end

compressionLeft = (nz-2)/2;
for j=peakPos:-1:1
    
    if n_cold_data_interp(j,xcut)/n0 < 1.2
        compressionLeft = j;
        break;
    end
end
outerLeftEdge(i) = compressionLeft;

Width(i) = 0.5*(compressionRight-compressionLeft); %Units of Gyroradii
Area(i) = 0.5*(sum(n_cold_data_interp(compressionLeft:compressionRight,xcut)) .*Width(i)); %Units of n0 * gyroradii
% expSpeed = 0.5*(peakPos - (nz-2)/2)/time; %UNits of cold gyroradii over gyroperiod



n(i,:)=n_cold_data_interp(:,xcut);
uz(i,:) = upz_cold_data_interp(:,xcut);


% if i==32
%     i
% end
% i
%testing reason for current growth. density or perp speed of FS
%12/13/2021;
%FS current
% [maxJx(i,:),indexmaxJx] = max(abs(Jperpx_mixed(:,xcut)));
% [maxJy(i,:),indexmaxJy] = max(abs(Jperpy_mixed(:,xcut)));
% 
% nfsatmaxJx(i,:) = n_mixed_data_interp(indexmaxJx,xcut)./n0;
% nfsatmaxJy(i,:) = n_mixed_data_interp(indexmaxJy,xcut)./n0;
% 
% maxJxindex(i,:) = indexmaxJx;
% maxJyindex(i,:) = indexmaxJy;
%total current
[~,indexmaxJx] = max(abs(deltaJxdata_interp(:,xcut)));
[~,indexmaxJy] = max(abs(deltaJydata_interp(:,xcut)));

nfsatmaxJx(i,:) = n_mixed_data_interp(indexmaxJx,xcut)./n0;
nfsatmaxJy(i,:) = n_mixed_data_interp(indexmaxJy,xcut)./n0;

maxJxindex(i,:) = indexmaxJx;
maxJyindex(i,:) = indexmaxJy;


%calxulate dBx and dBy over time.
if i > 1
dBxdata_interp(i,:) =Bxdata_interp(:,xcut) - Bxdata_interp_previous(:,xcut);
dBydata_interp(i,:) =Bydata_interp(:,xcut) - Bydata_interp_previous(:,xcut);
dBzdata_interp(i,:) =Bzdata_interp(:,xcut) - Bzdata_interp_previous(:,xcut);


end

Bxdata_interp_previous = Bxdata_interp;
Bydata_interp_previous = Bydata_interp;
Bzdata_interp_previous = Bzdata_interp;


end

%Energy Density Plot vs Time


if i==48
figure;
 set(gcf,'color','w');
hold off
%     yyaxis left
load('/import/c1/DAYSIDE/atvu/swkecold.mat')
semilogy([dt*outputSteps:dt*outputSteps:time],ke_coldallxz(1:48)-ke_coldallxz_sw(1:48),'b-','linewidth',1.5); hold on
% semilogy([dt*outputSteps:dt*outputSteps:time],ke_coldallxz_sw,'b.','linewidth',1.5); hold on
semilogy([dt*outputSteps:dt*outputSteps:time],abs(JswdotEallxz(1:48))-ke_coldallxz_sw(1:48),'b--','linewidth',1.5)
semilogy([dt*outputSteps:dt*outputSteps:time],abs(JfsdotEallxz(1:48)),'r--','linewidth',1.5)

%     yyaxis right
%     plot(JfsdotE(i,:)); %0.5 = outpuSteps * dt. deltaT
title('Energy vs Time','fontsize',16)
ylabel('Energy [ J]','fontsize',14)
xlabel('Time [\Omega_i]','fontsize',14)
%     xlim([nz/2-50 nz/2+50])
grid on
legend({'SW KE','SW |\SigmaJ\cdotE\Deltat|', 'FS  |\SigmaJ\cdotE\Deltat|'},'fontsize',14,'location','northwest')
% legend({'SW KE','SW KE (no FS)','SW |\SigmaJ\cdotE\Deltat|', 'FS  |\SigmaJ\cdotE\Deltat|'},'fontsize',14,'location','northwest')
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','EnergyDensityvsTime8');
    xlim([2.9 10.1])
print(gcf,'-dpng','-r300','-loose',fileNamePNG);


figure;
set(gcf,'color','w');
plot([dt*outputSteps:dt*outputSteps:time],max(abs(cold_J_x')));
hold on;
plot([dt*outputSteps:dt*outputSteps:time],max(abs(mixed_J_x')));
plot([dt*outputSteps:dt*outputSteps:time],smooth(max(abs(J_x'))));

title('max |J| along z at x=120 vs Time','fontsize',16)
ylabel('J/J0','fontsize',14)
xlabel('Time [\Omega_i]','fontsize',14)
%     xlim([nz/2-50 nz/2+50])
grid on
legend({'SW','FS','Total'},'fontsize',14,'location','northwest')


end


%     ke_coldAllxz(i) = sum(ke_coldallx(i,:));
%     JfsdotEallxz(i) = sum(sum(JfsdotEallx));
% legend(string(5:timeFrame))

n_cold_data_interp = imgaussfilt(n_cold_data_interp./n0,0.1);
[Exdata_interp] = ((interpolate_Data(Edata,1,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;
[Eydata_interp] = ((interpolate_Data(Edata,2,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;%cold



if nz==800
    n_cold_data_interp= n_cold_data_interp(200:600,:);
    nz=400;
end

[~,peakPos] = max(n_cold_data_interp(:,xcut));
maxEx = max(abs(Exdata_interp(:,xcut)));
maxEy = max(abs(Eydata_interp(:,xcut)));

for i=peakPos:-1:1
    
    if n_cold_data_interp(i,xcut)/n0 < 1
        compressionLeft = i+1;
        break;
    end
end
for i=peakPos:+1:nz
    
    if n_cold_data_interp(i,xcut)/n0 < 1
        compressionRight = i-1;
        break;
    end
end
% figure
% for k=1:2:i
%     plot(ke_cold(k,:)); hold on
% end

peakWidth = 0.5*(compressionRight-compressionLeft); %Units of Gyroradii
peakArea = 0.5*(sum(n_cold_data_interp(compressionLeft:compressionRight,xcut)) .*peakWidth); %Units of n0 * gyroradii
% expSpeed = 0.5*(peakPos - (nz-2)/2)/time; %UNits of cold gyroradii over gyroperiod







Run.n = n;
Run.peakN = peakN;
Run.peakN2Index = peakN2Index;
Run.peakN2 = peakN2;
Run.peakPos = peakPos;
Run.expSpeed = expSpeed;
Run.peakWidth = peakWidth;
Run.peakArea = peakArea;
Run.maxEx = maxEx;
Run.maxEy = maxEy;
Run.maxJx = maxJx;
Run.maxJy = maxJy;
Run.maxdeltaJx = maxdeltaJx;
Run.maxdeltaJy = maxdeltaJy;
Run.ke_cold = ke_cold;
Run.JfsdotE = JfsdotE;
Run.JswdotE = JswdotE;
Run.maxJxTime = maxJxTime;
Run.avgvz = avgvz;
Run.JfsdotEx = JfsdotEx;
Run.JfdsdotEy = JfsdotEy;
Run.JswdotEx = JswdotEx;
Run.JswdotEy = JswdotEy;
Run.maxUz = maxUz;
Run.minUx = minUx;
Run.expSpeed = expSpeed;
Run.maxSWTE= SWTEmax;
Run.boundarySpeed = boundarySpeed;
Run.Width = Width;
Run.Area = Area;
Run.Uzatmax = Uzatmax;
Run.Ufsatmax = Ufsatmax;
Run.Ufsmax = Ufsmax;
Run.maxU = maxU;
Run.nfsatmaxU = nfsatmaxU;
Run.minB = minB;

Run.nfsatmaxJx=nfsatmaxJx;
Run.nfsatmaxJy=nfsatmaxJy;
Run.maxJxindex = maxJxindex;
Run.maxJyindex = maxJyindex;
Run.dBx=dBxdata_interp;
Run.dBy=dBydata_interp;

Run.nfs = nfs_setup;
Run.vfspara = fsSpeed_setup;
Run.vswpara = swSpeed_setup;
Run.shear = sind(2/3*shear_setup);
Run.vfsperp = fsThermal_setup;

Run.Jxmin1 = Jxmin1;
Run.Jxmin2 = Jxmin2;
Run.Jymin1 = Jymin1;
Run.Jymin2 = Jymin2;

Run.Jx = JxperTime;
Run.Jy = JyperTime;
end
