%Get the properties of the FB compresional boundary for muiltiple runs with
%different parameters
% clear 
% load('/import/c1/DAYSIDE/atvu/RunsOutput120_12242021.mat')

load('/import/c1/DAYSIDE/atvu/RunsOutput120_2022-02-23.mat')

timeSteps = 500;
outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95;
dt = 0.02;
output = outputSteps;
stepInterval = 1;

time = 800/50;%18;%gyroperiods
timeFrame = time/(dt*outputSteps)

xcut=160;

n0 = 5e15;
va = 48.95;


%Load the Data from each Run with different parameters
%Different Mach numbers for SW speed
% [n_6M,peakN_6M,peakPos_6M,expSpeed_6M,peakWidth_6M,peakArea_6M] = getCompressionProperties('214',dt,outputSteps,time,xcut)
% [n_8M,peakN_8M,peakPos_8M,expSpeed_8M,peakWidth_8M,peakArea_8M] = getCompressionProperties('215',dt,outputSteps,time,xcut)
% [n_10M,peakN_10M,peakPos_10M,expSpeed_10M,peakWidth_10M,peakArea_10M] = getCompressionProperties('201',dt,outputSteps,time,xcut)
% (outputFolder,dt,outputSteps,time,xcut,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)

%%High Resolution
% [M12] = getCompressionProperties('271',0.01,outputSteps,time,xcut,012,12,24,8,90);
% [M12b] =getCompressionProperties('279',0.01,outputSteps,time,xcut,012,12,24,8,90); %No Sw
%Different foreshock ion density ratios
[fs75] =   getCompressionProperties('220',dt,outputSteps,time,xcut,0.075,10,20,8,90);
[fs105] =  getCompressionProperties('221',dt,outputSteps,time,xcut,0.105,10,20,8,90);
[fs135] =  getCompressionProperties('223',dt,outputSteps,time,xcut,0.135,10,20,8,90);

[fs135b] = getCompressionProperties('237',dt,outputSteps,time,xcut,0.135,10,20,8,90);
[fs75b] =  getCompressionProperties('238',dt,outputSteps,time,xcut,0.075,10,20,8,90);

[fs7] =    getCompressionProperties('245',dt,outputSteps,time,xcut,0.07,10,20,8,90);
[fs8] =    getCompressionProperties('246',dt,outputSteps,time,xcut,0.08,10,20,8,90);
[fs13] =   getCompressionProperties('247',dt,outputSteps,time,xcut,0.13,10,20,8,90);
[fs14] =   getCompressionProperties('248',dt,outputSteps,time,xcut,0.14,10,20,8,90);

[fs165] =  getCompressionProperties('224',dt,outputSteps,time,xcut,0.165,10,20,8,90);
[fs45] =   getCompressionProperties('236',dt,outputSteps,time,xcut,0.045,10,20,8,90);
[fs6] =    getCompressionProperties('208',dt,outputSteps,time,xcut,0.06,10,20,8,90);
[fs9] =    getCompressionProperties('209',dt,outputSteps,time,xcut,0.09,10,20,8,90);
[fs12] =   getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[fs15] =   getCompressionProperties('210',dt,outputSteps,time,xcut,0.15,10,20,8,90);
[fs18] =   getCompressionProperties('211',dt,outputSteps,time,xcut,0.18,10,20,8,90);

[fs25] =   getCompressionProperties('285',dt,outputSteps,time,xcut,0.025,10,20,8,90);

% % %Different Ma
[M5] = getCompressionProperties('307',dt,outputSteps,time,xcut,012,5,7.0,8,90);
[M2] = getCompressionProperties('308',dt,outputSteps,time,xcut,012,2,7.0,8,90);
[M1] = getCompressionProperties('309',dt,outputSteps,time,xcut,012,1,7.0,8,90);

[M35] = getCompressionProperties('290',dt,outputSteps,time,xcut,012,3.5,7.0,8,90);
[M6] = getCompressionProperties('214',dt,outputSteps,time,xcut,012,6,12,8,90);
[M8] = getCompressionProperties('215',dt,outputSteps,time,xcut,012,8,16,8,90);
[M10] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[M12] = getCompressionProperties('216',dt,outputSteps,time,xcut,012,12,24,8,90);
[M14] = getCompressionProperties('217',dt,outputSteps,time,xcut,012,14,28,8,90);
[M16] = getCompressionProperties('218',dt,outputSteps,time,xcut,012,16,32,8,90);

% % % %Different SW Speeds
[SWv6]  = getCompressionProperties('274',dt,outputSteps,time,xcut,012,6,20,8,90);
[SWv8]  = getCompressionProperties('275',dt,outputSteps,time,xcut,012,8,20,8,90);
[SWv10] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[SWv12] = getCompressionProperties('276',dt,outputSteps,time,xcut,012,12,20,8,90);
[SWv14] = getCompressionProperties('277',dt,outputSteps,time,xcut,012,14,20,8,90);
[SWv14b] = getCompressionProperties('331',dt,outputSteps,6.5,xcut,012,14,20,8,90);
[SWv16] = getCompressionProperties('278',dt,outputSteps,time,xcut,012,16,20,8,90);

[SWv6f]  = getCompressionProperties('274',dt,outputSteps,time,12*6,012,6,20,8,90);
[SWv8f]  = getCompressionProperties('275',dt,outputSteps,time,12*8,012,8,20,8,90);
[SWv10f] = getCompressionProperties('222',dt,outputSteps,time,12*10,012,10,20,8,90);
[SWv12f] = getCompressionProperties('276',dt,outputSteps,time,12*12,012,12,20,8,90);
[SWv14f] = getCompressionProperties('331',dt,outputSteps,time,12*14,012,14,20,8,90);
[SWv16f] = getCompressionProperties('278',dt,outputSteps,time,12*16,012,16,20,8,90);


% %Different FS Speeds
[FSv02] = getCompressionProperties('316',dt,outputSteps,time,xcut,012,10,02,8,90);
[FSv04] = getCompressionProperties('317',dt,outputSteps,time,xcut,012,10,04,8,90);
[FSv06] = getCompressionProperties('318',dt,outputSteps,time,xcut,012,10,06,8,90);
[FSv07] = getCompressionProperties('319',dt,outputSteps,time,xcut,012,10,07,8,90);


[FSv09] = getCompressionProperties('291',dt,outputSteps,time,xcut,012,10,09,8,90);
[FSv12] = getCompressionProperties('225',dt,outputSteps,time,xcut,012,10,12,8,90);
[FSv16] = getCompressionProperties('226',dt,outputSteps,time,xcut,012,10,16,8,90);
[FSv20] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[FSv24] = getCompressionProperties('227',dt,outputSteps,time,xcut,012,10,24,8,90);
[FSv28] = getCompressionProperties('228',dt,outputSteps,time,xcut,012,10,28,8,90);




% % %Different Shear
[d15] = getCompressionProperties('229',dt,outputSteps,time,xcut,0.12,10,20,8,15);
[d30] = getCompressionProperties('204',dt,outputSteps,time,xcut,0.12,10,20,8,30);
[d45] = getCompressionProperties('230',dt,outputSteps,time,xcut,0.12,10,20,8,45);
[d60] = getCompressionProperties('205',dt,outputSteps,time,xcut,0.12,10,20,8,60);
[d75] = getCompressionProperties('231',dt,outputSteps,time,xcut,0.12,10,20,8,75);
[d90] = getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[d105] = getCompressionProperties('232',dt,outputSteps,time,xcut,0.12,10,20,8,105);
[d120] = getCompressionProperties('206',dt,outputSteps,time,xcut,0.12,10,20,8,120);
[d135] = getCompressionProperties('233',dt,outputSteps,time,xcut,0.12,10,20,8,135);
[d150] = getCompressionProperties('207',dt,outputSteps,time,xcut,0.12,10,20,8,150);
[d165] = getCompressionProperties('234',dt,outputSteps,time,xcut,0.12,10,20,8,165);
[d180] = getCompressionProperties('235',dt,outputSteps,time,xcut,0.12,10,20,8,180);
% 
% % %Different FS Thermals
[fsT1] = getCompressionProperties('311',dt,outputSteps,time,xcut,0.12,10,20,1,90);

[fsT2] = getCompressionProperties('284',dt,outputSteps,time,xcut,0.12,10,20,2,90);
[fsT3] = getCompressionProperties('310',dt,outputSteps,time,xcut,0.12,10,20,3,90);

[fsT4] = getCompressionProperties('239',dt,outputSteps,time,xcut,0.12,10,20,4,90);
[fsT5] = getCompressionProperties('242',dt,outputSteps,time,xcut,0.12,10,20,5,90);
[fsT6] = getCompressionProperties('240',dt,outputSteps,time,xcut,0.12,10,20,6,90);
[fsT7] = getCompressionProperties('243',dt,outputSteps,time,xcut,0.12,10,20,7,90);
[fsT8] = getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[fsT9] = getCompressionProperties('244',dt,outputSteps,time,xcut,0.12,10,20,9,90);
[fsT10] = getCompressionProperties('241',dt,outputSteps,time,xcut,0.12,10,20,10,90);


%Different TD thicknesses
[dd4] = getCompressionProperties('341',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[dd8] = getCompressionProperties('342',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[dd12] = getCompressionProperties('343',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[dd16] = getCompressionProperties('344',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[dd20] = getCompressionProperties('345',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[dd24] = getCompressionProperties('346',dt,outputSteps,time,xcut,0.12,10,20,8,90);


%%FS Distributions
time = 550/50;
[GB135] = getCompressionProperties('256',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[GB225] = getCompressionProperties('257',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[GB315] = getCompressionProperties('258',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[GB045] = getCompressionProperties('259',dt,outputSteps,time,xcut,0.12,10,20,8,90);

time = 700/50;
[RB4] = getCompressionProperties('251',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[RB8] = getCompressionProperties('250',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[RB8comp] = getCompressionProperties('283',dt,outputSteps,time,xcut,0.12,10,22.3,10,90);
%[RB12] = getCompressionProperties('257',dt,outputSteps,time,xcut,0.12,10,20,8,90);

time = 650/50;
% [By15] = getCompressionProperties('266',dt,outputSteps,time,xcut,0.12,10,20,8,90);
% [By30] = getCompressionProperties('261',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[By15] = getCompressionProperties('288',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[By30] = getCompressionProperties('289',dt,outputSteps,time,xcut,0.12,10,20,8,90);

xcut=120;
time = 800/50;
[By75] = getCompressionProperties('330',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[By15] = getCompressionProperties('320',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[By225] = getCompressionProperties('321',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[By30] = getCompressionProperties('322',dt,outputSteps,time,xcut,0.12,10,20,8,90);

[By75] = getCompressionProperties('330',dt,outputSteps,time,floor(202-(202-xcut).*cosd(7.5)),0.12,10,20,8,90);
[By15] = getCompressionProperties('320',dt,outputSteps,time,floor(202-(202-xcut).*cosd(15)),0.12,10,20,8,90);
[By225] = getCompressionProperties('321',dt,outputSteps,time,floor(202-(202-xcut).*cosd(22.5)),0.12,10,20,8,90);
[By30] = getCompressionProperties('322',dt,outputSteps,time,floor(202-(202-xcut).*cosd(30)),0.12,10,20,8,90);

[By75f] = getCompressionProperties('330',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By15f] = getCompressionProperties('320',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By225f] = getCompressionProperties('321',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By30f] = getCompressionProperties('322',dt,outputSteps,time,12*10,0.12,10,20,8,90);

%Same time and same place
[By75f] = getCompressionProperties('330',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By15f] = getCompressionProperties('320',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By225f] = getCompressionProperties('321',dt,outputSteps,time,12*10,0.12,10,20,8,90);
[By30f] = getCompressionProperties('322',dt,outputSteps,time,12*10,0.12,10,20,8,90);

%Same Time, different position basd on SW para speed
[By75f] = getCompressionProperties('330',dt,outputSteps,time,12*ceil(10*cosd(7.5)),0.12,10,20,8,90);
[By15f] = getCompressionProperties('320',dt,outputSteps,time,12*ceil(10*cosd(15)),0.12,10,20,8,90);
[By225f] = getCompressionProperties('321',dt,outputSteps,time,12*ceil(10*cosd(22.5)),0.12,10,20,8,90);
[By30f] = getCompressionProperties('322',dt,outputSteps,time,12*ceil(10*cosd(25)),0.12,10,20,8,90);

time = 875/50;
xcut = 150;
[TD0]  = getCompressionProperties('313',dt,outputSteps,time,xcut,0.12,10,20,8,90); %120
[TD15] = getCompressionProperties('272',dt,outputSteps,time,124+0*(202-floor(xcut* cosd(atand(1/3)))),0.12,10,20,8,90); %114
[TD45] = getCompressionProperties('280',dt,outputSteps,time,144+0*(202-floor(xcut* cosd(atand(1/1)))),0.12,10,20,8,90); %85

[TD0]  = getCompressionProperties('313',dt,outputSteps,time,xcut,0.12,10,20,8,90); %120
[TD15] = getCompressionProperties('314',dt,outputSteps,time,xcut,0.12,10,20,8,90); %114
[TD45] = getCompressionProperties('315',dt,outputSteps,time,xcut,0.12,10,20,8,90); %85

[TD60] = getCompressionProperties('273',dt,outputSteps,time,(202-38),0.12,10,20,8,90);

[TD15] = getCompressionProperties('272',dt,outputSteps,time,xcut,0.12,10,20,8,90); %114
[TD45] = getCompressionProperties('280',dt,outputSteps,time,xcut,0.12,10,20,8,90); %85

earlyTime = 12;
lateTime = 18;
centerTime = 12;
windowTime = 2;
%% Testing Jperp Pos and N pos
%peak J/peak N
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');

nfs = 10*[0.9,1.2,1.6,2.0,2.4,2.8];
n = mean([FSv12.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.maxJperp(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([FSv09.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv12.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv16.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv20.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv24.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv28.maxN(cutTime-windowTime:cutTime+windowTime,xcut)],1)/n0;

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([11.5 28.5])
% P_Shear = polyfit(nfs,u,1);
% corr = corrcoef(nfs,u);
% Xint = P_Shear(2) / -(P_Shear(1));
% xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
% yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('max Jperp [J0]','fontsize',14)
% ylim([1.0 2.625])
yyaxis left

box on; grid on
xlabel('FS U_{||} [V_A]','fontsize',14)
ylabel('max N [n0]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial FS Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Parallel Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

% P = polyfit(nfs,u,1);
% vpara_slope = [vpara_slope,P(1)];
end

%peak J/peak N pos
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');

nfs = 10*[0.9,1.2,1.6,2.0,2.4,2.8];
n = mean([FSv12.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([FSv09.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv12.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv16.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv20.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv24.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    FSv28.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut)],1);

% yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([11.5 28.5])
% P_Shear = polyfit(nfs,u,1);
% corr = corrcoef(nfs,u);
% Xint = P_Shear(2) / -(P_Shear(1));
% xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
% yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

hold on

% yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Position [z]','fontsize',14)
% ylim([1.0 2.625])
% yyaxis left

box on; grid on
xlabel('FS U_{||} [V_A]','fontsize',14)
% ylabel('max N [n0]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
% title(strcat('Initial FS Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Parallel Speed'),'fontsize',14)
legend({'max N Pos';'max Jperp Pos'},'location','west')

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

% P = polyfit(nfs,u,1);
% vpara_slope = [vpara_slope,P(1)];
end

%peakJ/peakN
for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = ([15,30,45,60,75,90,105,120,135,150,165,180]);
n = mean([d15.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d30.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d45.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d60.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d75.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d90.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d105.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d120.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d135.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d150.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d165.maxJperp(cutTime-windowTime:cutTime+windowTime,:),...
    d180.maxJperp(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([d15.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d30.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d45.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d60.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d75.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d90.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d105.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d120.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d135.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d150.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d165.maxN(cutTime-windowTime:cutTime+windowTime,xcut),...
    d180.maxN(cutTime-windowTime:cutTime+windowTime,xcut)],1)/n0;



yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([0 185])
xticks([0:15:180])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(nfs,n,300,'filled');
ylabel('max Jperp [J0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('\phi [°]','fontsize',14)
ylabel('max N [n0]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
% title(strcat('Initial TD Magnetic Shear'),'fontsize',14)
% xlim([0 1])

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end


for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = ([15,45,75,90,105,135,165,180]);
n = mean([d15.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d45.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d75.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d90.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d105.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d135.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d165.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:),...
    d180.maxJperpPos(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([d15.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d45.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d75.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d90.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d105.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d135.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d165.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut),...
    d180.maxNPos(cutTime-windowTime:cutTime+windowTime,xcut)],1);



% yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([0 185])
xticks([0:15:180])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

% yyaxis right
scatter(nfs,n,300,'filled');
% ylabel('max Jperp [J0]','fontsize',14)
% yyaxis left

box on; grid on
xlabel('\phi [°]','fontsize',14)
ylabel('Position [z]','fontsize',14)
% legend('location','southeast')
legend({'max N Pos';'max Jperp Pos'},'location','northeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
% title(strcat('Initial TD Magnetic Shear'),'fontsize',14)
% xlim([0 1])

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end



%% Testing Current Pos
%peak J
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');

FSv12.maxdeltaJx
nfs = 10*[0.9,1.2,1.6,2.0,2.4,2.8];
n = mean([FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
   FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([FSv09.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv16.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:)],1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([11.5 28.5])
% P_Shear = polyfit(nfs,u,1);
% corr = corrcoef(nfs,u);
% Xint = P_Shear(2) / -(P_Shear(1));
% xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
% yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('n at peak Jy Pos [z]','fontsize',14)
% ylim([1.0 2.625])
yyaxis left

box on; grid on
xlabel('FS U_{||} [V_A]','fontsize',14)
ylabel('n at peak Jx Pos [z]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial FS Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Parallel Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

% P = polyfit(nfs,u,1);
% vpara_slope = [vpara_slope,P(1)];
end

for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = ([15,45,75,90,105,135,165,180]);
n = mean([d15.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d45.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d75.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d90.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d105.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d135.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d165.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d180.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([d15.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d45.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d75.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d90.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d105.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d135.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d165.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d180.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:)],1);



yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([0 185])
xticks([0:15:180])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(nfs,n,300,'filled');
ylabel('n at peak Jy pos [z]','fontsize',14)
yyaxis left

box on; grid on
xlabel('\phi [°]','fontsize',14)
ylabel('n at peak Jx pos [z]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
% title(strcat('Initial TD Magnetic Shear'),'fontsize',14)
% xlim([0 1])

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

close  
%n at peak J pos
windowTime=1
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');

FSv12.maxdeltaJx
nfs = 10*[0.9,1.2,1.6,2.0,2.4,2.8];
n = mean([FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
   FSv12.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([FSv09.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv12.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv16.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv20.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv24.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    FSv28.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:)],1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([11.5 28.5])
% P_Shear = polyfit(nfs,u,1);
% corr = corrcoef(nfs,u);
% Xint = P_Shear(2) / -(P_Shear(1));
% xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
% yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('n at peak Jy Pos [z]','fontsize',14)
% ylim([1.0 2.625])
yyaxis left

box on; grid on
xlabel('FS U_{||} [V_A]','fontsize',14)
ylabel('n at peak Jx Pos [z]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial FS Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Parallel Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

% P = polyfit(nfs,u,1);
% vpara_slope = [vpara_slope,P(1)];
end

for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = ([15,45,75,90,105,135,165,180]);
n = mean([d15.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d45.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d75.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d90.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d105.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d135.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d165.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:),...
    d180.nfsatmaxJx(cutTime-windowTime:cutTime+windowTime,:)],1);

u = mean([d15.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d45.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d75.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d90.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d105.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d135.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d165.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:),...
    d180.nfsatmaxJy(cutTime-windowTime:cutTime+windowTime,:)],1);



yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([0 185])
xticks([0:15:180])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(nfs,n,300,'filled');
ylabel('n at peak Jy pos [z]','fontsize',14)
yyaxis left

box on; grid on
xlabel('\phi [°]','fontsize',14)
ylabel('n at peak Jx pos [z]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
% title(strcat('Initial TD Magnetic Shear'),'fontsize',14)
% xlim([0 1])

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear_',string(cutTime));
    
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
%% n_fs
[Times,Slope_nfs] = calculateSlopeperTime(...
     [2.5,4.5,6,8,10.5,12,14,16.5,18]./100,...
    [fs25.maxU(:,:),...
    fs45.maxU(:,:),...
    fs6.maxU(:,:),...
    fs8.maxU(:,:),...
    fs105.maxU(:,:),...
    fs12.maxU(:,:),...
    fs14.maxU(:,:),...
    fs165.maxU(:,:),...
    fs18.maxU(:,:)]./va,'n_{fs}',[2.5,4.5,6,8,10,12,14,16,18],0);

for cutTime = [centerTime]
%cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [2.5,4.5,6,8,10,12,14,16,18]./100;
n = mean([fs25.peakN(cutTime,:),...
    fs45.peakN(cutTime,:),...
    fs6.peakN(cutTime,:),...
    fs8.peakN(cutTime,:),...
    fs105.peakN(cutTime,:),...
    fs12.peakN(cutTime,:),...
    fs14.peakN(cutTime,:),...
    fs165.peakN(cutTime,:),...
    fs18.peakN(cutTime,:)]./n0,1);

u = mean([fs25.maxU(cutTime,:),...
    fs45.maxU(cutTime,:),...
    fs6.maxU(cutTime,:),...
    fs8.maxU(cutTime,:),...
    fs105.maxU(cutTime,:),...
    fs12.maxU(cutTime,:),...
    fs14.maxU(cutTime,:),...
    fs165.maxU(cutTime,:),...
    fs18.maxU(cutTime,:)]./va,1);
yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([5.5 18.5]./100)
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
xlim([Xint,xLimits(2)])
plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('n_{fs} [n_0]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
cutTime = mean(cutTime);
% legend('location','southeast')
title(strcat('Initial FS Ion Density Ratio Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Density Ratio'),'fontsize',14)


fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','n_fs_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% M_A
[Times,Slope_MA] = calculateSlopeperTime(....
    [3.5,5,6,8,10,12,14,16],...
    [M35.maxU(:,:),...
    M5.maxU(:,:),...
    M6.maxU(:,:),...
    M8.maxU(:,:),...
    M10.maxU(:,:),...
    M12.maxU(:,:),...
    M14.maxU(:,:),...
    M16.maxU(:,:)]./va,'U',[0.12],0);

for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [3.5,5,6,8,10,12,14,16];
n = mean([M35.peakN(cutTime,:),...
    M5.peakN(cutTime,:),...
    M6.peakN(cutTime,:),...
    M8.peakN(cutTime,:),...
    M10.peakN(cutTime,:),...
    M12.peakN(cutTime,:),...
    M14.peakN(cutTime,:),...
    M16.peakN(cutTime,:)]./n0,1);

u = mean([M35.maxU(cutTime,:),...
    M5.maxU(cutTime,:),...
    M6.maxU(cutTime,:),...
    M8.maxU(cutTime,:),...
    M10.maxU(cutTime,:),...
    M12.maxU(cutTime,:),...
    M14.maxU(cutTime,:),...
    M16.maxU(cutTime,:)]./va,1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([5.5 16.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
xlim([Xint,xLimits(2)])
plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('SW U, ½ FS U [V_A]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial Ion Bulk Flow Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial Ion Bulk Flow Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','M_A_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% swvpara
[Time,Slope_swvpara] = calculateSlopeperTime(....
    [6,8,10,12,14,16],...
    [SWv6.maxU(:,:),...
    SWv8.maxU(:,:),...
    SWv10.maxU(:,:),...
    SWv12.maxU(:,:),...
    SWv14.maxU(:,:),...
    SWv16.maxU(:,:)]./va,'SW U',[0.12],0);

for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [6,8,10,12,14,16];
n = mean([SWv6.peakN(cutTime,:),...
    SWv8.peakN(cutTime,:),...
    SWv10.peakN(cutTime,:),...
    SWv12.peakN(cutTime,:),...
    SWv14.peakN(cutTime,:),...%(SWv14b.peakN(11,:)+SWv14b.peakN(12,:)+SWv14b.peakN(12,:))/3.*ones(1,1),...
    SWv16.peakN(cutTime,:)]./n0,1);

n2 = ([By75.peakN(cutTime,:),...
    By15.peakN(cutTime,:),...
    By225.peakN(cutTime,:),...
    By30.peakN(cutTime,:),....
    %TD60.peakN(cutTime,:)]...
    ]./n0);%,1);

nfs2 = [cosd(7.5)*10,...
    cosd(15)*10,...
    cosd(22.5)*10,...
    cosd(30)*10,...
    %cosd(71.5651)*10...
    ];

u = mean([SWv6.maxU(cutTime,:),...
    SWv8.maxU(cutTime,:),...
    SWv10.maxU(cutTime,:),...
    SWv12.maxU(cutTime,:),...
    SWv14.maxU(cutTime,:),...
    SWv16.maxU(cutTime,:)]./va,1);

u2 = ([By75.maxU(cutTime,:),...
    By15.maxU(cutTime,:),...
    By225.maxU(cutTime,:),...
    By30.maxU(cutTime,:),...
    %TD60.maxU(cutTime,:),...
    ]./va);%,1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([5.5 16.5])
scatter(nfs2(1),u2(1),400,'^');
scatter(nfs2(2),u2(2),400,'^');
scatter(nfs2(3),u2(3),400,'^');
scatter(nfs2(4),u2(4),400,'^');
% scatter(nfs2(3),u2(3),500,'p');
% scatter(nfs2(4),u2(4),500,'p');
% scatter(nfs2(5),u2(5),500,'p');
%scatter(nfs2(5),u2(5),500,'p');

P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);


yyaxis right
scatter(nfs,n,300,'filled'); hold on;
scatter(nfs2(1),n2(1),400,'^');
scatter(nfs2(2),n2(2),400,'^');
scatter(nfs2(3),n2(3),400,'^');
scatter(nfs2(4),n2(4),400,'^');
% scatter(nfs2(3),n2(3),500,'p');
% scatter(nfs2(4),n2(4),500,'p');
% scatter(nfs2(5),n2(5),500,'p');
%scatter(nfs2(5),n2(5),500,'p');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
ylim([1.7 2.01])
yyaxis left
Xint = P_Shear(2) / (P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([0,xLimits(2)])
plot(x1,y1,'--')
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+46*xL(2)/100, yL(2)*99.5/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+47*xL(2)/100, yL(2)*97.5/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+47.5*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+48.75*xL(2)/100, yL(2)*96.25/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)


box on; grid on
xlabel('SW U_{||} [V_A]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
cutTime = mean(cutTime);
% legend('location','southeast')
title(strcat('Initial SW Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial SW Ion Parallel Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','SWUpara',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% swvpara in SW frame, same xcut, but different delta T
[Time,Slope_swvpara] = calculateSlopeperTime(....
    [6,8,10,12,14,16],...
    [SWv6f.maxU(:,:),...
    SWv8f.maxU(:,:),...
    SWv10f.maxU(:,:),...
    SWv12f.maxU(:,:),...
    SWv14f.maxU(:,:),...
    SWv16f.maxU(:,:)]./va,'SW U (SW Frame)',[0.12],windowTime);

for cutTime = [centerTime]
% cutTime = centerTime;%cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [6,8,10,12,14,16];
n = mean([SWv6f.peakN(cutTime,:),...
    SWv8f.peakN(cutTime,:),...
    SWv10f.peakN(cutTime,:),...
    SWv12f.peakN(cutTime,:),...
    SWv14f.peakN(cutTime,:),...
    SWv16f.peakN(cutTime,:)]./n0,1);

n2 = ([By75f.peakN(cutTime,:),...
    By15f.peakN(cutTime,:),...
    By225f.peakN(cutTime,:),...
    By30f.peakN(cutTime,:),....
    %TD60.peakN(cutTime,:)]...
    ]./n0);

nfs2 = [cosd(7.5)*10,...
    cosd(15)*10,...
    cosd(22.5)*10,...
    cosd(30)*10,...
    %cosd(71.5651)*10...
    ];

u = mean([SWv6f.maxU(cutTime,:),...
    SWv8f.maxU(cutTime,:),...
    SWv10f.maxU(cutTime,:),...
    SWv12f.maxU(cutTime,:),...
    SWv14f.maxU(cutTime,:),...
    SWv16f.maxU(cutTime,:)]./va,1);

u2 = ([By75f.maxU(cutTime,:),...
    By15f.maxU(cutTime,:),...
    By225f.maxU(cutTime,:),...
    By30f.maxU(cutTime,:),...
    %TD60.maxU(cutTime,:),...
    ]./va);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([5.5 16.5])
scatter(nfs2(1),u2(1),400,'^');
scatter(nfs2(2),u2(2),400,'^');
scatter(nfs2(3),u2(3),400,'^');
scatter(nfs2(4),u2(4),400,'^');
% scatter(nfs2(3),u2(3),500,'p');
% scatter(nfs2(4),u2(4),500,'p');
% scatter(nfs2(5),u2(5),500,'p');
%scatter(nfs2(5),u2(5),500,'p');

P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);


yyaxis right
scatter(nfs,n,300,'filled'); hold on;
scatter(nfs2(1),n2(1),400,'^');
scatter(nfs2(2),n2(2),400,'^');
scatter(nfs2(3),n2(3),400,'^');
scatter(nfs2(4),n2(4),400,'^');
% scatter(nfs2(3),n2(3),500,'p');
% scatter(nfs2(4),n2(4),500,'p');
% scatter(nfs2(5),n2(5),500,'p');
%scatter(nfs2(5),n2(5),500,'p');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
% ylim([1.7 2.01])
yyaxis left
Xint = P_Shear(2) / (P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([0,xLimits(2)])
plot(x1,y1,'--')
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+46*xL(2)/100, yL(2)*99.5/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+47*xL(2)/100, yL(2)*97.5/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+47.5*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+48.75*xL(2)/100, yL(2)*94.00/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*94.5/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)


box on; grid on
xlabel('SW U_{||} (SW Frame) [V_A]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
cutTime = mean(cutTime);
% legend('location','southeast')
title(strcat('Initial SW Ion Parallel Speed in SW Frame Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',12)
title(strcat('Initial SW Ion Parallel Speed (in SW Frame)'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','SWUpara_SWframe_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end


%% FSvpara
[Time,Slope_fsvpara] = calculateSlopeperTime(....
    10*[0.9,1.2,1.6,2.0,2.4,2.8],...
    [FSv09.maxU(:,:),...
    FSv12.maxU(:,:),...
    FSv16.maxU(:,:),...
    FSv20.maxU(:,:),...
    FSv24.maxU(:,:),...
    FSv28.maxU(:,:)]./va,'FS U_{||}',[0.12],0);

vpara_slope = [];
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = 10*[0.9,1.2,1.6,2.0,2.4,2.8];
n = mean([FSv09.peakN(cutTime,:),...
    FSv12.peakN(cutTime,:),...
    FSv16.peakN(cutTime,:),...
    FSv20.peakN(cutTime,:),...
    FSv24.peakN(cutTime,:),...
    FSv28.peakN(cutTime,:)]./n0,1);

u = mean([FSv09.maxU(cutTime,:),...
    FSv12.maxU(cutTime,:),...
    FSv16.maxU(cutTime,:),...
    FSv20.maxU(cutTime,:),...
    FSv24.maxU(cutTime,:),...
    FSv28.maxU(cutTime,:)]./va,1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([11.5 28.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
xlim([Xint,xLimits(2)])
plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
ylim([1.0 2.625])
yyaxis left

box on; grid on
xlabel('FS U_{||} [V_A]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial FS Ion Parallel Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Parallel Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

P = polyfit(nfs,u,1);
vpara_slope = [vpara_slope,P(1)];
end
%% vexp vs time
figure; 
figure; set(gcf,'color','w');
plot([0.5:0.5:16],FSv09.maxU./va,'linewidth',2); 
hold on; 
plot([0.5:0.5:16],FSv12.maxU./va,'linewidth',2); 
plot([0.5:0.5:16],FSv16.maxU./va,'linewidth',2); 
plot([0.5:0.5:16],FSv20.maxU./va,'linewidth',2); 
plot([0.5:0.5:16],FSv24.maxU./va,'linewidth',2); 
plot([0.5:0.5:16],FSv28.maxU./va,'linewidth',2);

legend({'9 V_A'; '12 V_A'; '16 V_A'; '20 V_A'; '24 V_A'; '28 V_A'},'location','northwest')
ylabel('V_exp [V_A]','fontsize',14)
xlabel('FS V para [V_A]','fontsize',14)
title('FS V para vs. V_exp','fontsize',14)
%% FSvperp
[Time,Slope_fsvperp] = calculateSlopeperTime(....
    [2,3,4,5,6,7,8,9,10],...
    [fsT2.maxU(:,:),...
    fsT3.maxU(:,:),...
    fsT4.maxU(:,:),...
    fsT5.maxU(:,:),...
    fsT6.maxU(:,:),...
    fsT7.maxU(:,:),...
    fsT8.maxU(:,:),...
    fsT9.maxU(:,:),...,...
    fsT10.maxU(:,:)]./va,'FS U_{th}',[0.12],0);

vperp_slope = [];
for cutTime = [centerTime]
% cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [2,3,4,5,6,7,8,9,10];
n = mean([fsT2.peakN(cutTime,:),...
    fsT3.peakN(cutTime,:),...
    fsT4.peakN(cutTime,:),...
    fsT5.peakN(cutTime,:),...
    fsT6.peakN(cutTime,:),...
    fsT7.peakN(cutTime,:),...
    fsT8.peakN(cutTime,:),...
    fsT9.peakN(cutTime,:),...
    fsT10.peakN(cutTime,:)]./n0,1);

u = mean([fsT2.maxU(cutTime,:),...
    fsT3.maxU(cutTime,:),...
    fsT4.maxU(cutTime,:),...
    fsT5.maxU(cutTime,:),...
    fsT6.maxU(cutTime,:),...
    fsT7.maxU(cutTime,:),...
    fsT8.maxU(cutTime,:),...
    fsT9.maxU(cutTime,:),...,...
    fsT10.maxU(cutTime,:)]./va,1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([3.5 10.5])

P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
xlim([Xint,xLimits(2)]);
% xlim([0, xLimits(2)])
plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*92/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
ylim([1.09 2])
yyaxis left

box on; grid on
xlabel('FS U_{th} [V_A]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime= mean(cutTime);
title(strcat('Initial FS Ion Thermal Speed Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial FS Ion Thermal Speed'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUperp_',string(cutTime));
     
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

P = polyfit(nfs,u,1);
vperp_slope = [vperp_slope,P(1)];
end

%% Ratio between perp/para
figure; set(gcf,'color','w');
plot(Time./2,(Slope_fsvperp./Slope_fsvpara),'linewidth',3);
box on; grid on
xlabel('Time [\Omega_i]','fontsize',14)
ylabel('FS V_\perp/V_{||} [#]','FontSize',14)
% legend('location','southeast')
title('Ratio of FS Thermal/Parallel Speeds vs Time','fontsize',16)
xlim([0 12])
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FS ThermalParallel Ratio');
     
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
%% Shear
[Times,Slope_Shear] = calculateSlopeperTime(...
     [15,30,45,60,75,90,105,120,135,150,165,180],...
    [d15.maxU(:,:),...
    d30.maxU(:,:),...
    d45.maxU(:,:),...
    d60.maxU(:,:),...
    d75.maxU(:,:),...
    d90.maxU(:,:),...
    d105.maxU(:,:),...
    d120.maxU(:,:),...
    d135.maxU(:,:),...
    d150.maxU(:,:),...
    d165.maxU(:,:),...
    d180.maxU(:,:)]./va,'\phi',[0.12],windowTime);
for centerTime = 5:2:12
for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = ([15,30,45,60,75,90,105,120,135,150,165,180]);
n = mean([d15.peakN(cutTime,:),...
    d30.peakN(cutTime,:),...
    d45.peakN(cutTime,:),...
    d60.peakN(cutTime,:),...
    d75.peakN(cutTime,:),...
    d90.peakN(cutTime,:),...
    d105.peakN(cutTime,:),...
    d120.peakN(cutTime,:),...
    d135.peakN(cutTime,:),...
    d150.peakN(cutTime,:),...
    d165.peakN(cutTime,:),...
    d180.peakN(cutTime,:)]./n0,1);

u = mean([d15.maxU(cutTime,:),...
    d30.maxU(cutTime,:),...
    d45.maxU(cutTime,:),...
    d60.maxU(cutTime,:),...
    d75.maxU(cutTime,:),...
    d90.maxU(cutTime,:),...
    d105.maxU(cutTime,:),...
    d120.maxU(cutTime,:),...
    d135.maxU(cutTime,:),...
    d150.maxU(cutTime,:),...
    d165.maxU(cutTime,:),...
    d180.maxU(cutTime,:)]./va,1);



yyaxis left
scatter(nfs,u,300,'filled'); hold on
xlim([0 185])
xticks([0:15:180])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('\phi [°]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
% title(strcat('Initial TD Magnetic Shear'),'fontsize',14)
% xlim([0 1])

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
end
%% sin ( Shear )
C = 125/180;
[Times,Slope_sinShear] = calculateSlopeperTime(...
     sind(C.*[15,30,45,60,75,90,105,120,135,150,165,180]),...
    [d15.maxU(:,:),...
    d30.maxU(:,:),...
    d45.maxU(:,:),...
    d60.maxU(:,:),...
    d75.maxU(:,:),...
    d90.maxU(:,:),...
    d105.maxU(:,:),...
    d120.maxU(:,:),...
    d135.maxU(:,:),...
    d150.maxU(:,:),...
    d165.maxU(:,:),...
    d180.maxU(:,:)]./va,'sin(125/180\phi)',[0.12],0);
C = 125/180;
for cutTime = [centerTime]
% cutTime = 14;
figure; set(gcf,'color','w');

% cutTime = cutTime-windowTime:cutTime+windowTime;
nfs = [15,30,45,60,75,90,105,120,135,150,165,180];
n = mean([d15.peakN(cutTime,:),...
    d30.peakN(cutTime,:),...
    d45.peakN(cutTime,:),...
    d60.peakN(cutTime,:),...
    d75.peakN(cutTime,:),...
    d90.peakN(cutTime,:),...
    d105.peakN(cutTime,:),...
    d120.peakN(cutTime,:),...
    d135.peakN(cutTime,:),...
    d150.peakN(cutTime,:),...
    d165.peakN(cutTime,:),...
    d180.peakN(cutTime,:)]./n0,1);

u = mean([d15.maxU(cutTime,:),...
    d30.maxU(cutTime,:),...
    d45.maxU(cutTime,:),...
    d60.maxU(cutTime,:),...
    d75.maxU(cutTime,:),...
    d90.maxU(cutTime,:),...
    d105.maxU(cutTime,:),...
    d120.maxU(cutTime,:),...
    d135.maxU(cutTime,:),...
    d150.maxU(cutTime,:),...
    d165.maxU(cutTime,:),...
    d180.maxU(cutTime,:)]./va,1);


%Fitting
Uz_asind = asind(u./max(u)) 
Uz_asind(9:end) = (90-Uz_asind(9:end))+90
% figure; plot(nfs,Uz_asind)
P = polyfit(nfs,Uz_asind,1);
P(1)

% nfsH = 5:5:180;
% uH = interp1(nfs,u,nfsH);
% [~,I]=max(uH)
% nfsH(I)

yyaxis left
scatter(sind(C.*nfs),u,300,'filled'); hold on
% xlim([0 185])
% xticks([0:15:180])
xlim([0 1.02])
P_Shear = polyfit(sind(C.*nfs),u,1);
corr = corrcoef(sind(C.*nfs),u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
text(xL(1)+3*xL(2)/100, yL(2)*96/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)

yyaxis right
scatter(sind(C.*nfs),n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('sin(125/180\phi)','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Magnetic Shear Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial TD Magnetic Shear as sin(125/180\phi)'),'fontsize',14)
% xlim([0 1])

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','sinMagneticShear_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% TD thickness
[Times,Slope_MA] = calculateSlopeperTime(....
    [0.5,1,1.5,2,2.5,3],...
    [dd4.maxU(:,:),...
    dd8.maxU(:,:),...
    dd12.maxU(:,:),...
    dd16.maxU(:,:),...
    dd20.maxU(:,:),...
    dd24.maxU(:,:)]./va,'U',[0.12],0);

for cutTime = [28]
 cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [0.5,1.0,1.5,2.0,2.5,3];
n = mean([dd4.peakN(cutTime,:),...
    dd8.peakN(cutTime,:),...
    dd12.peakN(cutTime,:),...
    dd16.peakN(cutTime,:),...
    dd20.peakN(cutTime,:),...
    dd24.peakN(cutTime,:)]./n0,1);

u = mean([dd4.maxU(cutTime,:),...
    dd8.maxU(cutTime,:),...
    dd12.maxU(cutTime,:),...
    dd16.maxU(cutTime,:),...
    dd20.maxU(cutTime,:),...
    dd24.maxU(cutTime,:)]./va,1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([5.5 16.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('TD Thickness [FS R_g]','fontsize',14)
ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Thickness Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial TD Thickness'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','TD_Thickness_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% TD thickness, Leading Boundary

for cutTime = [28]
cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [0.5,1.0,1.5,2.0,2.5,3];

u = mean([dd4.peakN2(cutTime,:),...
    dd8.peakN2(cutTime,:),...
    dd12.peakN2(cutTime,:),...
    dd16.peakN2(cutTime,:),...
    dd20.peakN2(cutTime,:),...
    dd24.peakN2(cutTime,:)]./n0,1);

% yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([5.5 16.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



% yyaxis right
% scatter(nfs,n,300,'filled');
ylabel('Density Compression Ratio [n_0]','fontsize',14)
% yyaxis left

box on; grid on
xlabel('TD Thickness [FS R_g]','fontsize',14)
% ylabel('Expansion Speed [V_A]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Thickness Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial TD Thickness: Leading Boundary Compression'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','TD_Thickness_LeadingBoundary_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end


%% TD thickness, Currents Jx

for cutTime = [24]
cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [0.5,1.0,1.5,2.0,2.5,3];

u = mean([dd4.Jxmin1(cutTime,:),...
    dd8.Jxmin1(cutTime,:),...
    dd12.Jxmin1(cutTime,:),...
    dd16.Jxmin1(cutTime,:),...
    dd20.Jxmin1(cutTime,:),...
    dd24.Jxmin1(cutTime,:)],1);

u2 = mean([dd4.Jxmin2(cutTime,:),...
    dd8.Jxmin2(cutTime,:),...
    dd12.Jxmin2(cutTime,:),...
    dd16.Jxmin2(cutTime,:),...
    dd20.Jxmin2(cutTime,:),...
    dd24.Jxmin2(cutTime,:)],1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([5.5 16.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,u2,300,'filled');
ylabel('Trailing \Delta Jx [J_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('TD Thickness [FS R_g]','fontsize',14)
ylabel('Leading \Delta Jx [J_0]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Thickness Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial TD Thickness: \Delta Jx'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','TD_Thickness_DeltaJx_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
%% TD thickness, Currents Jy

for cutTime = [24]
cutTime = cutTime-windowTime:cutTime+windowTime;
figure; set(gcf,'color','w');


nfs = [0.5,1.0,1.5,2.0,2.5,3];

u = mean([dd4.Jymin1(cutTime,:),...
    dd8.Jymin1(cutTime,:),...
    dd12.Jymin1(cutTime,:),...
    dd16.Jymin1(cutTime,:),...
    dd20.Jymin1(cutTime,:),...
    dd24.Jymin1(cutTime,:)],1);

u2 = mean([dd4.Jymin2(cutTime,:),...
    dd8.Jymin2(cutTime,:),...
    dd12.Jymin2(cutTime,:),...
    dd16.Jymin2(cutTime,:),...
    dd20.Jymin2(cutTime,:),...
    dd24.Jymin2(cutTime,:)],1);

yyaxis left
scatter(nfs,u,300,'filled'); hold on
% xlim([5.5 16.5])
P_Shear = polyfit(nfs,u,1);
corr = corrcoef(nfs,u);
Xint = P_Shear(2) / -(P_Shear(1));
xLimits = xlim; x1 = linspace(Xint,xLimits(2)); y1 = polyval(P_Shear,x1);
% xlim([Xint,xLimits(2)])
% plot(x1,y1)
yL = get(gca,'YLim'); xL = get(gca,'XLim'); 
% text(xL(1)+2*xL(2)/100, yL(2)*99/100,sprintf('m=%1.3f',P_Shear(1)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
% text(xL(1)+3*xL(2)/100, yL(2)*93/100,sprintf('\\rho=%1.4f',corr(1,2)),'color',[0 0.4470 .7410],'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)



yyaxis right
scatter(nfs,u2,300,'filled');
ylabel('Trailing \Delta Jy [J_0]','fontsize',14)
yyaxis left

box on; grid on
xlabel('TD Thickness [FS R_g]','fontsize',14)
ylabel('Leading \Delta Jy [J_0]','fontsize',14)
% legend('location','southeast')
cutTime = mean(cutTime);
title(strcat('Initial TD Thickness Dependence at t =',{' '},string(cutTime/2),{' '},'\Omega_i'),'fontsize',14)
title(strcat('Initial TD Thickness: \Delta Jy'),'fontsize',14)

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','TD_Thickness_DeltaJy_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% Compression Ratio vs Exp Speed for FS Distributions

for cutTime =12
x = [...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2)];
 x = [...
       fs12.nfsatmaxU(cutTime,:);...
      GB135.nfsatmaxU(cutTime,:);...
%       GB225.maxU(cutTime,:);...
      GB315.nfsatmaxU(cutTime,:);...
%       GB045.maxU(cutTime,:);...
        RB4.nfsatmaxU(cutTime,:);...
        RB8.nfsatmaxU(cutTime,:);...
%        By15.nfsatmaxU(cutTime,:);...
%        By30.nfsatmaxU(cutTime,:);...
%        TD15.nfsatmaxU(cutTime,:);...
%        TD45.nfsatmaxU(cutTime,:);...
       fsT9.nfsatmaxU(cutTime,:);...
       RB8comp.nfsatmaxU(cutTime,:)...
%        TD60.nfsatmaxU(cutTime,:)...
       ];
   
    x = [...
       fs12.peakN(cutTime,:);...
      GB135.peakN(cutTime,:);...
%       GB225.maxU(cutTime,:);...
      GB315.peakN(cutTime,:);...
%       GB045.maxU(cutTime,:);...
        RB4.peakN(cutTime,:);...
        RB8.peakN(cutTime,:);...
%        By15.peakN(cutTime,:);...
%        By30.peakN(cutTime,:);...
%        TD15.peakN(cutTime,:);...
%        TD45.peakN(cutTime,:);...
       fsT9.peakN(cutTime,:);...
       RB8comp.peakN(cutTime,:)...
       
%        TD60.nfsatmaxU(cutTime,:)...
       ]./n0;
   
 
y = [...
        fs12.maxU(cutTime,:);...
      GB135.maxU(cutTime,:);...
%       GB225.maxU(cutTime,:);...
      GB315.maxU(cutTime,:);...
%       GB045.maxU(cutTime,:);...
        RB4.maxU(cutTime,:);...
        RB8.maxU(cutTime,:);...
%        By15.maxU(cutTime,:);...
%        By30.maxU(cutTime,:);...
%        TD15.maxU(cutTime,:);...
%        TD45.maxU(cutTime,:);...
       fsT9.maxU(cutTime,:);... 
       RB8comp.maxU(cutTime,:)...
%        TD60.maxU(cutTime,:)...
   ]./va;
    figure; set(gcf,'color','w');
         scatter(x(1),y(1),200,'ks','filled'); hold on;  

    for i=2:length(x)-2
    scatter(x(i),y(i),200,'filled'); hold on;  
    end 
%     for i=length(x)-1:1:length(x)
    scatter(x(6),y(6),200,'s','filled','markerfacecolor',[0.4940 0.1840 0.5560]); 
        scatter(x(7),y(7),200,'s','filled','markerfacecolor',[0.4660 0.6740 0.1880]); 

%     end
    
    grid on
    xlabel('Peak Density [n_0]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    title('Expansion Speed for f(v_{fs}) at t=6 \Omega_i','fontsize',16)
%     legend({'Maxwellian 8 M_A','Gyrophase Bunched -y +z','Gyrophase Bunched +y -z',...
%         'Ring Beam >4 M_A','Ring Beam >8 M_A','By 15°','By 30°','TD Tilt 20°','TD Tilt 45°','Ring Beam >4 M_A Maxwellian','Ring Beam >8 M_A Maxwellian'},'fontsize',10,'location','southeast'); legend boxoff
     legend({'Maxwellian 8 V_A','Gyrophase Bunched -y +z','Gyrophase Bunched +y -z',...
        'Ring Beam >4 M_A','Ring Beam >8 M_A','Maxwellian 9 V_A','Maxwellian 10 V_A + 2.23 V_A ||'},'fontsize',10,'location','southeast'); legend boxoff
 
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_FSDist'); print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end


%% Model Speed vs Exp Speed
slopeofExpOverModel_nfs = [];
slopeofExpOverModel_Ma = [];
slopeofExpOverModel_vfspara = [];
slopeofExpOverModel_vfsthermal = [];
slopeofExpOverModel_shear = [];
shearCoeff = 125/180;
Times = [8:16];
for cutTime =Times
x_nfs = [...
    calculateModelSpeed(0.025, 20, 10, 90, 08,cutTime./2);...
    calculateModelSpeed(0.045, 20, 10, 90, 08,cutTime./2);...
    calculateModelSpeed(0.060, 20, 10, 90, 08,cutTime./2);...
    calculateModelSpeed(0.080, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.105, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.140, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.165, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.180, 20, 10, 90, 08,cutTime./2)];
 
 
x_Ma= [...
     calculateModelSpeed(0.120, 20, 06, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 08, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 12, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 14, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 16, 90, 08,cutTime./2)...
%      calculateModelSpeed(0.120, 12, 06, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 16, 08, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 24, 12, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 28, 14, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 32, 16, sind(2/3*090), 08,cutTime./2)...
];
%  
x_vfspara = [...
     calculateModelSpeed(0.120, 09, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 12, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 16, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 24, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 28, 10, 90, 08,cutTime./2)];
 
x_vfsthermal= [... 
     calculateModelSpeed(0.120, 20, 10, 90, 02,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 04,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 05,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 06,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 07,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 09,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 10,cutTime./2)];
     
x_shear= [... 
     calculateModelSpeed(0.120, 20, 10, 15, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 30, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 45, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 60, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 75, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 105, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 120, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 135, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 150, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 165, 08,cutTime./2);...
     calculateModelSpeed(0.120, 20, 10, 180, 08,cutTime./2)];

y_nfs = [...
     fs25.maxU(cutTime,:);...
     fs45.maxU(cutTime,:);...
      fs6.maxU(cutTime,:);...
      fs8.maxU(cutTime,:);...
    fs105.maxU(cutTime,:);...
     fs12.maxU(cutTime,:);...
     fs14.maxU(cutTime,:);...
    fs165.maxU(cutTime,:);...
     fs18.maxU(cutTime,:)]./va;
y_Ma = [... 
     SWv6.maxU(cutTime,:);...
     SWv8.maxU(cutTime,:);...
    SWv12.maxU(cutTime,:);...
    SWv14.maxU(cutTime,:);...
    SWv16.maxU(cutTime,:)...
%        M6.maxU(cutTime,:);...
%        M8.maxU(cutTime,:);...
%       M10.maxU(cutTime,:);...
%       M12.maxU(cutTime,:);...
%       M14.maxU(cutTime,:);...
%       M16.maxU(cutTime,:)...
]./va;

y_vfspara = [...
    FSv09.maxU(cutTime,:);...
    FSv12.maxU(cutTime,:);...
    FSv16.maxU(cutTime,:);...
    FSv20.maxU(cutTime,:);...
    FSv24.maxU(cutTime,:);...
    FSv28.maxU(cutTime,:)]./va;

y_vfsthermal = [...
    fsT2.maxU(cutTime,:);...
    fsT4.maxU(cutTime,:);...
    fsT5.maxU(cutTime,:);...
    fsT6.maxU(cutTime,:);...
    fsT7.maxU(cutTime,:);...
    fsT8.maxU(cutTime,:);...
    fsT9.maxU(cutTime,:);...
    fsT10.maxU(cutTime,:)]./va;

y_shear = [...    
      d15.maxU(cutTime,:);...
      d30.maxU(cutTime,:);...
      d45.maxU(cutTime,:);...
      d60.maxU(cutTime,:);...
      d75.maxU(cutTime,:);...
      d90.maxU(cutTime,:);...
     d105.maxU(cutTime,:);...
     d120.maxU(cutTime,:);...
     d135.maxU(cutTime,:);...
     d150.maxU(cutTime,:);...
     d165.maxU(cutTime,:);...
     d180.maxU(cutTime,:)]./va;
 
P_nfs = polyfit(x_nfs,y_nfs,1);
slopeofExpOverModel_nfs = [slopeofExpOverModel_nfs,P_nfs(1)];

P_Ma = polyfit(x_Ma,y_Ma,1);
slopeofExpOverModel_Ma = [slopeofExpOverModel_Ma,P_Ma(1)];

P_vfspara = polyfit(x_vfspara,y_vfspara,1);
slopeofExpOverModel_vfspara = [slopeofExpOverModel_vfspara,P_vfspara(1)];

P_vfsthermal = polyfit(x_vfsthermal,y_vfsthermal,1);
slopeofExpOverModel_vfsthermal = [slopeofExpOverModel_vfsthermal,P_vfsthermal(1)];

P_shear = polyfit(x_shear,y_shear,1);
slopeofExpOverModel_shear = [slopeofExpOverModel_shear,P_shear(1)];


if cutTime == 12
    %plotting
    
    figure; set(gcf,'color','w'); axis square
    scatter(x_nfs,y_nfs,100,'filled'); hold on; grid on;xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_nfs,x1);
    plot(x1,y1); 
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_nfs(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for n_{fs} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_nfs'); print(gcf,'-dpng','-r300','-loose',fileNamePNG);
    
    figure; set(gcf,'color','w');
    scatter(x_Ma,y_Ma,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_Ma,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_Ma(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{sw,||} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_Ma'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_vfspara,y_vfspara,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_vfspara,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_vfspara(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{fs,||} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_vfspara'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_vfsthermal,y_vfsthermal,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_vfsthermal,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_vfsthermal(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{fs,\perp} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_vfsthermal'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_shear,y_shear,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_shear,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_shear(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for sin(125/180\phi) at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_shear'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
end

end

figure
set(gcf,'color','w');
scatter(Times./2,slopeofExpOverModel_nfs,100,'filled'); hold on
scatter(Times./2,slopeofExpOverModel_Ma,100,'filled')
scatter(Times./2,slopeofExpOverModel_vfspara,100,'filled')
scatter(Times./2,slopeofExpOverModel_vfsthermal,100,'filled')
scatter(Times./2,slopeofExpOverModel_shear,100,'filled')
xlabel('Time [\Omega_i]','fontsize',14)
ylabel('Slope of Exp./Model Speeds [#]','fontsize',14)
legend({'n_{fs}';'cos(shear)v_{sw,||}';'cos(shear)v_{fs,||}';'sin(shear)v_{fs,\perp}';'125/180\phi'},'fontsize',14,'location','northwest'); legend boxoff
% ylim([0 2])
xlim([4 8]); ylim([0.0 2.5])
% legend('location','southeast')
title('Slope of Exp/Model Speeds vs Time','fontsize',16)
grid on
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','modelvsExpSlope');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

%% Model Jy vs Real Jy
slopeofExpOverModel_nfs = [];
slopeofExpOverModel_Ma = [];
slopeofExpOverModel_vfspara = [];
slopeofExpOverModel_vfsthermal = [];
slopeofExpOverModel_shear = [];
shearCoeff = 125/180;
Times = [8:16];
for cutTime =Times
x_nfs = [...
    calculateModelJy(0.025, 20, 10, 90, 08,cutTime./2);...
    calculateModelJy(0.045, 20, 10, 90, 08,cutTime./2);...
    calculateModelJy(0.060, 20, 10, 90, 08,cutTime./2);...
    calculateModelJy(0.080, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.105, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.140, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.165, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.180, 20, 10, 90, 08,cutTime./2)];
 
 
x_Ma= [...
     calculateModelJy(0.120, 20, 06, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 08, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 12, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 14, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 16, 90, 08,cutTime./2)...
%      calculateModelSpeed(0.120, 12, 06, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 16, 08, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 20, 10, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 24, 12, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 28, 14, sind(2/3*090), 08,cutTime./2);...
%      calculateModelSpeed(0.120, 32, 16, sind(2/3*090), 08,cutTime./2)...
];
%  
x_vfspara = [...
     calculateModelJy(0.120, 09, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 12, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 16, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 24, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 28, 10, 90, 08,cutTime./2)];
 
x_vfsthermal= [... 
     calculateModelJy(0.120, 20, 10, 90, 02,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 04,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 05,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 06,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 07,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 09,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 10,cutTime./2)];
     
x_shear= [... 
     calculateModelJy(0.120, 20, 10, 15, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 30, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 45, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 60, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 75, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 90, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 105, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 120, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 135, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 150, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 165, 08,cutTime./2);...
     calculateModelJy(0.120, 20, 10, 180, 08,cutTime./2)];

y_nfs = [...
     fs25.maxJy;...
     fs45.maxJy;...
      fs6.maxJy;...
      fs8.maxJy;...
    fs105.maxJy;...
     fs12.maxJy;...
     fs14.maxJy;...
    fs165.maxJy;...
     fs18.maxJy];
y_Ma = [... 
     SWv6.maxJy;...
     SWv8.maxJy;...
    SWv12.maxJy;...
    SWv14.maxJy;...
    SWv16.maxJy...
%        M6.maxU(cutTime,:);...
%        M8.maxU(cutTime,:);...
%       M10.maxU(cutTime,:);...
%       M12.maxU(cutTime,:);...
%       M14.maxU(cutTime,:);...
%       M16.maxU(cutTime,:)...
];

y_vfspara = [...
    FSv09.maxJy;...
    FSv12.maxJy;...
    FSv16.maxJy;...
    FSv20.maxJy;...
    FSv24.maxJy;...
    FSv28.maxJy];

y_vfsthermal = [...
    fsT2.maxJy;...
    fsT4.maxJy;...
    fsT5.maxJy;...
    fsT6.maxJy;...
    fsT7.maxJy;...
    fsT8.maxJy;...
    fsT9.maxJy;...
    fsT10.maxJy];

y_shear = [...    
      d15.maxJy;...
      d30.maxJy;...
      d45.maxJy;...
      d60.maxJy;...
      d75.maxJy;...
      d90.maxJy;...
     d105.maxJy;...
     d120.maxJy;...
     d135.maxJy;...
     d150.maxJy;...
     d165.maxJy;...
     d180.maxJy];
 
P_nfs = polyfit(x_nfs,y_nfs,1);
slopeofExpOverModel_nfs = [slopeofExpOverModel_nfs,P_nfs(1)];

P_Ma = polyfit(x_Ma,y_Ma,1);
slopeofExpOverModel_Ma = [slopeofExpOverModel_Ma,P_Ma(1)];

P_vfspara = polyfit(x_vfspara,y_vfspara,1);
slopeofExpOverModel_vfspara = [slopeofExpOverModel_vfspara,P_vfspara(1)];

P_vfsthermal = polyfit(x_vfsthermal,y_vfsthermal,1);
slopeofExpOverModel_vfsthermal = [slopeofExpOverModel_vfsthermal,P_vfsthermal(1)];

P_shear = polyfit(x_shear,y_shear,1);
slopeofExpOverModel_shear = [slopeofExpOverModel_shear,P_shear(1)];


if cutTime == 12
    %plotting
    
    figure; set(gcf,'color','w'); axis square
    scatter(x_nfs,y_nfs,100,'filled'); hold on; grid on;xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_nfs,x1);
    plot(x1,y1); 
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_nfs(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for n_{fs} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_nfs'); print(gcf,'-dpng','-r300','-loose',fileNamePNG);
    
    figure; set(gcf,'color','w');
    scatter(x_Ma,y_Ma,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_Ma,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_Ma(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{sw,||} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_Ma'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_vfspara,y_vfspara,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_vfspara,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_vfspara(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{fs,||} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_vfspara'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_vfsthermal,y_vfsthermal,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_vfsthermal,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_vfsthermal(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for v_{fs,\perp} at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_vfsthermal'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
    
    figure; set(gcf,'color','w');
    scatter(x_shear,y_shear,100,'filled'); hold on; grid on; xlim([0 4]); ylim([0 4])
    xLimits = xlim; x1 = linspace(xLimits(1),xLimits(2)); y1 = polyval(P_shear,x1);
    plot(x1,y1)
    xlabel('Model Speed [V_A]','fontsize',14); ylabel('Expansion Speed [V_A]','fontsize',14)
    yL = get(gca,'YLim'); xL = get(gca,'XLim'); text(xL(1)+xL(2)/100, yL(2)*99/100,sprintf('m=%1.2f',P_shear(1)),'HorizontalAlignment','Left','VerticalAlignment','top', 'FontSize',14)
    title('Expansion Speed vs Model Speed for sin(125/180\phi) at t=6 \Omega_i','fontsize',14)
    fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','ExpSpeedvsModelSpeed_shear'); print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
end

end

figure
set(gcf,'color','w');
scatter(Times./2,slopeofExpOverModel_nfs,100,'filled'); hold on
scatter(Times./2,slopeofExpOverModel_Ma,100,'filled')
scatter(Times./2,slopeofExpOverModel_vfspara,100,'filled')
scatter(Times./2,slopeofExpOverModel_vfsthermal,100,'filled')
scatter(Times./2,slopeofExpOverModel_shear,100,'filled')
xlabel('Time [\Omega_i]','fontsize',14)
ylabel('Slope of Exp./Model Jy [#]','fontsize',14)
legend({'n_{fs}';'v_{sw,||}';'v_{fs,||}';'v_{fs,\perp}';'125/180\phi'},'fontsize',14,'location','northwest'); legend boxoff
% ylim([0 2])
xlim([4 8]); ylim([0.0 2.5])
% legend('location','southeast')
title('Slope of Exp/Model Jy vs Time','fontsize',16)
grid on
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','modelvsExpSlope_Jy');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);



%%  n 
figure
set(gcf,'color','w');
plot(fs25.n(20,:)./n0,'linewidth',2,'displayname','2%'); hold on
plot(fs45.n(20,:)./n0,'linewidth',2,'displayname','4%'); 
plot(fs6.n(20,:)./n0,'linewidth',2,'displayname','6%'); 
plot(fs9.n(20,:)./n0,'linewidth',2,'displayname','9%'); 
plot(fs12.n(20,:)./n0,'linewidth',2,'displayname','12%'); 
plot(fs15.n(20,:)./n0,'linewidth',2,'displayname','15%'); 
plot(fs18.n(20,:)./n0,'linewidth',2,'displayname','18%'); 
xlabel('Z [c/\Omega_i]','fontsize',14)
ylabel('n [n0]','fontsize',14)
% legend({'n_{fs}';'v_{sw,||}';'v_{fs,||}';'v_{fs,\perp}';'125/180\phi'},'fontsize',14,'location','northwest'); legend boxoff
% ylim([0 2])
% xlim([4 8]); ylim([0.0 2.5])
xlim([151 249])
% legend('location','southeast')
title('n vs z at x=160 c/\Omega_i and t=10 \Omega_i','fontsize',16)
legend('Location','Northwest')
grid on
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','nvsZposition');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

%% Functions
function [modelSpeed] = calculateModelSpeed(nfs_setup,fsSpeed_setup,swSpeed_setup,shear_setup,fsThermal_setup,time)
%modelSpeed = time./2 *nfs_setup * ( (0.125*fsSpeed_setup + 0.2*swSpeed_setup*cosd(0))*sind(shear_setup/2) + 0.6*fsThermal_setup); %.* dt*outputSteps*time;

% shear_setup = sind(2/3*shear_setup);
% modelSpeed = (time).^1.*(0.0074421*nfs_setup^2*shear_setup^2*fsSpeed_setup^2*time + ....
%                        -0.018018*nfs_setup^2*shear_setup^2*swSpeed_setup^2*time +...
%                         0.031088*nfs_setup^2              *fsThermal_setup^2*time +...
%     -0.0*nfs_setup*fsThermal_setup*shear_setup*time);
%modelSpeed = sqrt(modelSpeed);
% modelSpeed = 1.2056 + 6.2866*nfs_setup*time + -0.0061125*fsSpeed_setup*swSpeed_setup + 0.12913*fsThermal_setup*time +....
%     -0.021506*nfs_setup*fsThermal_setup*time^2 + 0.020955*nfs_setup*fsSpeed_setup*shear_setup*time^2 + -0.019329*nfs_setup*swSpeed_setup*shear_setup*time^2;
% modelSpeed = time * nfs_setup * (0.22113*shear_setup*fsSpeed_setup +...
%                                 -0.30914*shear_setup*swSpeed_setup +...
%                                 0.026593*time*nfs_setup*fsThermal_setup.^2);
                            
%  modelSpeed = time * nfs_setup * (0.20866*shear_setup*fsSpeed_setup +...
%                                 -0.31415*shear_setup*swSpeed_setup +...
%                                 0.21076*fsThermal_setup);
                            
% modelSpeed = time * nfs_setup * (0.21398*shear_setup*fsSpeed_setup +...
%                                 -0.32701*shear_setup*swSpeed_setup +...
%                                 0.22741*fsThermal_setup);
%                             
% modelSpeed = time * nfs_setup * (0.22032*shear_setup*fsSpeed_setup +...
%                                 -0.31117*shear_setup*swSpeed_setup +...
%                                 0.21528*time*nfs_setup*fsThermal_setup); 
%                             
% modelSpeed = time^2 * nfs_setup * (0.028999*shear_setup*fsSpeed_setup +...
%                                 -0.044549*shear_setup*swSpeed_setup +...
%                                 0.031177*fsThermal_setup);
                            
% modelSpeed = time * nfs_setup * (0.20921*shear_setup*fsSpeed_setup +...
%                                 -0.32425*shear_setup*swSpeed_setup +...
%                                 0.23879*fsThermal_setup);
% modelSpeed = time * nfs_setup * (0.20866*shear_setup*fsSpeed_setup +...
%     -0.31415*shear_setup*swSpeed_setup +...
%     0.21076*fsThermal_setup);
% modelSpeed = time * nfs_setup * (0.21053*shear_setup*fsSpeed_setup +...
%     -0.30949*shear_setup*swSpeed_setup +...
%     0.03085*time*fsThermal_setup);
% modelSpeed = time * nfs_setup * (0.1165*shear_setup*fsSpeed_setup +...
%     -0.02332*shear_setup*swSpeed_setup*time +...
%     0.036418*time*fsThermal_setup);

%125/180 shear, only lienar terms 8:16
modelSpeed = time * nfs_setup * (0.204*shear_setup*fsSpeed_setup +...
    -0.30603*shear_setup*swSpeed_setup +...
    0.21009*fsThermal_setup);

 
%125/180 shear, only lienar terms 11;13, updated 11/2
modelSpeed = time * nfs_setup * (0.19329*shear_setup*fsSpeed_setup +...
    -0.32384*shear_setup*swSpeed_setup +...
    0.2356*fsThermal_setup);

%125/180 shear, only lienar terms 8:16, updated 11/2
modelSpeed = time * nfs_setup * (0.19731*shear_setup*fsSpeed_setup +...
    -0.33159*shear_setup*swSpeed_setup +...
    0.24856*fsThermal_setup);


%125/180 shear, only lienar terms 8:16, updated 11/2, with y-intercept
modelSpeed = time * nfs_setup * ( 0.19338*sind(125/180*shear_setup)*fsSpeed_setup +...
    -0.26091*sind(125/180*shear_setup)*swSpeed_setup +...
    0.35073*fsThermal_setup +...
    -0.99276);



% %125/180 shear, with cos(shear)*vperp, updated 3/10/2022, with y-intercept,
% %with Solar wind Frame
% modelSpeed = time * nfs_setup * ( 0.2459*sind(125/180*shear_setup)*fsSpeed_setup +...
%    -0.15756*sind(125/180*shear_setup)*swSpeed_setup +...
%     0.1414*cosd(125/180*shear_setup)*fsThermal_setup +...
%     -0.63415);
% % 
%125/180 shear, with cos(shear)*vperp, updated 3/10/2022, with y-intercept,
%with Solar wind Frame cos/2
modelSpeed = time * nfs_setup * ( 0.21265*sind(125/180*shear_setup)*fsSpeed_setup +...
   -0.23251*sind(125/180*shear_setup)*swSpeed_setup +...
    0.32486*cosd(125/180*shear_setup/2)*fsThermal_setup +...
    -0.96347);


%125/180 shear, with cos(shear)*vperp, updated 3/10/2022, with y-intercept,
%with Solar wind Frame sin
modelSpeed = time * nfs_setup * ( 0.17187*sind(125/180*shear_setup)*fsSpeed_setup +...
   -0.31243*sind(125/180*shear_setup)*swSpeed_setup +...
    0.44585*sind(125/180*shear_setup)*fsThermal_setup +...
    -0.49826);



%125/180 shear, with cos(shear)*vperp, updated 3/10/2022, with y-intercept,
%with Solar wind Frame sinvperp, cosvpara
modelSpeed = time * nfs_setup * ( 0.34092*cosd(125/180*shear_setup)*fsSpeed_setup +...
   -0.60184*cosd(125/180*shear_setup)*swSpeed_setup +...
    0.47083*sind(125/180*shear_setup)*fsThermal_setup +...
    -0.68102);
end
function [modelSpeed] = calculateModelJy(nfs_setup,fsSpeed_setup,swSpeed_setup,shear_setup,fsThermal_setup,time)


% %125/180 shear, with cos(shear)*vperp, updated 3/10/2022, with y-intercept,
% %with Solar wind Frame
modelSpeed = nfs_setup * ( 0.095261*sind(125/180*shear_setup)*fsSpeed_setup +...
   0.13513*sind(125/180*shear_setup)*swSpeed_setup +...
    0.081879*cosd(125/180*shear_setup)*fsThermal_setup +...
    +0.05873);
% 

end

%% Calculate and PLot Slope Over Time
function [Times,Slope] = calculateSlopeperTime(parameterVector,UzMatrix,ParameterName,nfs,windowTime)
Slope=[];
Corr = [];

if windowTime == 0
    Times = 1:length(UzMatrix);
else
Times = [windowTime+1:1:length(UzMatrix)-windowTime-1];
% Times = [1:1:length(UzMatrix)];
end
UzMatrix = UzMatrix';

for cutTime = Times
    if windowTime == 0
        P = polyfit(parameterVector',UzMatrix(:,cutTime),1);
        Slope = [Slope,P(1)];
        C = corrcoef(parameterVector',UzMatrix(:,cutTime));
        Corr = [Corr,C(1,2)];
    else
        cutTime = cutTime-windowTime:cutTime+windowTime;
        avgUz = mean(UzMatrix(:,cutTime),2)';
        %     UzMatrixatCutTimes = UzMatrix(:,cutTime);
        
        P = polyfit(parameterVector,avgUz,1);
        Slope = [Slope,P(1)];
        C = corrcoef(parameterVector,avgUz);
        Corr = [Corr,C(1,2)];
        
    end
    


end
%Plot the Slope vs Time Graph 
figure
set(gcf,'color','w');
yyaxis left

% scatter(Times./2,Slope./(Times./2)./nfs,100,'filled')
% ylabel(strcat('Slope of ',{' '},string(ParameterName),'/\Omega_i\Deltatn_{fs}'),'fontsize',14)

plot(Times./2,Slope,'linewidth',3);%,100,'filled')
%ylabel(strcat('Expansion Speed/', string(ParameterName) ),'fontsize',14)
ylabel(strcat('Fitted Slopes with Expansion Speeds'),'fontsize',14)



xlabel('Time [\Omega_i]','fontsize',14)
% legend('location','southeast')
%title( {
%    [strcat('Initial ',ParameterName)]
%    [strcat('Fitted m & \rho vs. Time')]
%   } ,'fontsize',16)

title(strcat('Fitted m & \rho for Initial', {' '}, ParameterName, {' '}, 'vs. Time'),'fontsize',16)

grid on

yyaxis right
plot(Times./2,Corr,'linewidth',3);%,100,'filled')
ylabel(strcat('Expansion Speed Correlation Coefficients'),'fontsize',14)
if min(ylim) < -0.8
    ylim([-1.05 0])
else
ylim([0 1.05])
end

xlim([2 8])
% xlim([3 9])
ParameterName =erase(ParameterName,'\');
ParameterName = erase(ParameterName,'/');
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','SlopeOf',string(ParameterName),'vsTime');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

end
%%
function [Run] = getCompressionProperties(outputFolder,dt,outputSteps,time,xcut,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)



%Load the data for the Run
timeFrame = time/(dt*outputSteps);
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
% outputDirectory = strcat('/import/archive/DAYSIDE/atvu/Run',outputFolder);

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
      %% %Calculate max vaues and positions of Jperp and density
        del_Jperp = (Jperpx_mixed.^2 + Jperpy_mixed.^2).^(1/2);
        
        [max_del_Jperp, max_del_Jperp_pos] = max(del_Jperp(:,xcut));
        maxJperp(i,:)=max_del_Jperp;
        maxJperpPos(i,:)=max_del_Jperp_pos;
        
        ndelta = ndata_interp-ndata_interp0;
        ndelta_aboveTD = ndelta;
        ndelta_aboveTD(1:nz/2-10) = NaN;
        [max_ndelta,max_ndelta_pos] = max(ndelta_aboveTD);
        maxN(i,:)=max_ndelta;
        maxNPos(i,:)=max_ndelta_pos;
        
%%
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



        
        

Run.maxJperp = maxJperp;
Run.maxJperpPos = maxJperpPos;

Run.maxN=maxN;
Run.maxNPos=maxNPos;

end
