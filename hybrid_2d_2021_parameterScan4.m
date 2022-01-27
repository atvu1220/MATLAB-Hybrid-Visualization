%Get the properties of the FB compresional boundary for muiltiple runs with
%different parameters
% clear 

timeSteps = 800;
outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95;
dt = 0.02;
output = outputSteps;
stepInterval = 1;

time = 800/50%18;%gyroperiods
timeFrame = time/(dt*outputSteps)

xcut=100;

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
% [M12b] = getCompressionProperties('279',0.01,outputSteps,time,xcut,012,12,24,8,90);
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

% % %Different Ma
[M6] = getCompressionProperties('214',dt,outputSteps,time,xcut,012,6,12,8,90);
[M8] = getCompressionProperties('215',dt,outputSteps,time,xcut,012,8,16,8,90);
[M10] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[M12] = getCompressionProperties('216',dt,outputSteps,time,xcut,012,12,24,8,90);
[M14] = getCompressionProperties('217',dt,outputSteps,time,xcut,012,14,28,8,90);
[M16] = getCompressionProperties('218',dt,outputSteps,time,xcut,012,16,32,8,90);

% % % %Different SW Speeds
% [SWv6]  = getCompressionProperties('274',dt,outputSteps,time,xcut,012,6,20,8,90);
% [SWv8]  = getCompressionProperties('275',dt,outputSteps,time,xcut,012,8,20,8,90);
% [SWv10] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
% [SWv12] = getCompressionProperties('276',dt,outputSteps,time,xcut,012,12,20,8,90);
% [SWv14] = getCompressionProperties('277',dt,outputSteps,time,xcut,012,14,20,8,90);
% [SWv16] = getCompressionProperties('278',dt,outputSteps,time,xcut,012,16,20,8,90);


% %Different FS Speeds
[FSv12] = getCompressionProperties('225',dt,outputSteps,time,xcut,012,10,12,8,90);
[FSv16] = getCompressionProperties('226',dt,outputSteps,time,xcut,012,10,16,8,90);
[FSv20] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[FSv24] = getCompressionProperties('227',dt,outputSteps,time,xcut,012,10,24,8,90);
[FSv28] = getCompressionProperties('218',dt,outputSteps,time,xcut,012,10,28,8,90);

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
[fsT4] = getCompressionProperties('239',dt,outputSteps,time,xcut,0.12,10,20,4,90);
[fsT5] = getCompressionProperties('242',dt,outputSteps,time,xcut,0.12,10,20,5,90);
[fsT6] = getCompressionProperties('240',dt,outputSteps,time,xcut,0.12,10,20,6,90);
[fsT7] = getCompressionProperties('243',dt,outputSteps,time,xcut,0.12,10,20,7,90);
[fsT8] = getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
[fsT9] = getCompressionProperties('244',dt,outputSteps,time,xcut,0.12,10,20,9,90);
[fsT10] = getCompressionProperties('241',dt,outputSteps,time,xcut,0.12,10,20,10,90);



earlyTime = 12;
lateTime = 18;
%% n_fs
% [Slope] = calculateSlopeperTime(...
%      [6,8,10.5,12,14,16.5,18],...
%     [fs6.maxU(:,:),...
%     fs8.maxU(:,:),...
%     fs105.maxU(:,:),...
%     fs12.maxU(:,:),...
%     fs14.maxU(:,:),...
%     fs165.maxU(:,:),...
%     fs18.maxU(:,:)]./va,'Foreshock Ion Density Ratio',[6,8,10.5,12,14,16.5,18]);




for cutTime = [earlyTime,lateTime]
% cutTime = 10;
figure; set(gcf,'color','w');


nfs = [6,8,10.5,12,14,16.5,18];
n = [fs6.peakN(cutTime,:),...
    fs8.peakN(cutTime,:),...
    fs105.peakN(cutTime,:),...
    fs12.peakN(cutTime,:),...
    fs14.peakN(cutTime,:),...
    fs165.peakN(cutTime,:),...
    fs18.peakN(cutTime,:)]./n0;

u = [fs6.maxU(cutTime,:),...
    fs8.maxU(cutTime,:),...
    fs105.maxU(cutTime,:),...
    fs12.maxU(cutTime,:),...
    fs14.maxU(cutTime,:),...
    fs165.maxU(cutTime,:),...
    fs18.maxU(cutTime,:)]./va;
yyaxis left
scatter(nfs,u,300,'filled'); hold on
yyaxis right
scatter(nfs,n,300,'filled');
ylabel('peak N [cm^{-3}]')
yyaxis left

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('SW U [v_A]')
% legend('location','southeast')
title('Foreshock Ion Density Ratio at t='+string(cutTime))

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','n_fs_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

end
%% M_A
[Slope] = calculateSlopeperTime(....
    [6,8,10,12,14,16],...
    [M6.maxU(:,:),...
    M8.maxU(:,:),...
    M10.maxU(:,:),...
    M12.maxU(:,:),...
    M14.maxU(:,:),...
    M16.maxU(:,:)]./va,'MA',[0.12]);

for cutTime = [earlyTime,lateTime]
% cutTime = 10;
figure; set(gcf,'color','w');


nfs = [6,8,10,12,14,16];
n = [M6.peakN(cutTime,:),...
    M8.peakN(cutTime,:),...
    M10.peakN(cutTime,:),...
    M12.peakN(cutTime,:),...
    M14.peakN(cutTime,:),...
    M16.peakN(cutTime,:)]./n0;

u = [M6.maxU(cutTime,:),...
    M8.maxU(cutTime,:),...
    M10.maxU(cutTime,:),...
    M12.maxU(cutTime,:),...
    M14.maxU(cutTime,:),...
    M16.maxU(cutTime,:)]./va;

yyaxis left
scatter(nfs,u,300,'filled'); hold on
yyaxis right
scatter(nfs,n,300,'filled');
ylabel('peak N [cm^{-3}]')
yyaxis left

box on; grid on
xlabel('SW U [v_A]')
ylabel('SW U [v_A]')
% legend('location','southeast')
title('Bulk Flow Speed at t='+string(cutTime))

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','M_A_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end

%% FSvpara
[Slope] = calculateSlopeperTime(....
    10*[1.2,1.6,2.0,2.4,2.8],...
    [FSv12.maxU(:,:),...
    FSv16.maxU(:,:),...
    FSv20.maxU(:,:),...
    FSv24.maxU(:,:),...
    FSv28.maxU(:,:)]./va,'FS vpara',[0.12]);

vpara_slope = [];
for cutTime = [earlyTime,lateTime]
% cutTime = 10;
figure; set(gcf,'color','w');


nfs = 10*[1.2,1.6,2.0,2.4,2.8];
n = [FSv12.peakN(cutTime,:),...
    FSv16.peakN(cutTime,:),...
    FSv20.peakN(cutTime,:),...
    FSv24.peakN(cutTime,:),...
    FSv28.peakN(cutTime,:)]./n0;

u = [FSv12.maxU(cutTime,:),...
    FSv16.maxU(cutTime,:),...
    FSv20.maxU(cutTime,:),...
    FSv24.maxU(cutTime,:),...
    FSv28.maxU(cutTime,:)]./va;

yyaxis left
scatter(nfs,u,300,'filled'); hold on
yyaxis right
scatter(nfs,n,300,'filled');
ylabel('peak N [cm^{-3}]')
yyaxis left

box on; grid on
xlabel('FS Upara [v_A]')
ylabel('SW U [v_A]')
% legend('location','southeast')
title('Foreshock Ion Parallel Speed at t='+string(cutTime))

% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUpara_',string(cutTime));
%     
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

P = polyfit(nfs,u,1);
vpara_slope = [vpara_slope,P(1)];
end
%% FSvperp
[Slope] = calculateSlopeperTime(....
    [4,5,6,7,8,9,10],...
    [fsT4.maxU(:,:),...
    fsT5.maxU(:,:),...
    fsT6.maxU(:,:),...
    fsT7.maxU(:,:),...
    fsT8.maxU(:,:),...
    fsT9.maxU(:,:),...,...
    fsT10.maxU(:,:)]./va,'FS vperp',[0.12]);


vperp_slope = [];
for cutTime = [earlyTime,lateTime]
% cutTime = 16;
figure; set(gcf,'color','w');


nfs = [4,5,6,7,8,9,10];
n = [fsT4.peakN(cutTime,:),...
    fsT5.peakN(cutTime,:),...
    fsT6.peakN(cutTime,:),...
    fsT7.peakN(cutTime,:),...
    fsT8.peakN(cutTime,:),...
    fsT9.peakN(cutTime,:),...
    fsT10.peakN(cutTime,:)]./n0;

u = [fsT4.maxU(cutTime,:),...
    fsT5.maxU(cutTime,:),...
    fsT6.maxU(cutTime,:),...
    fsT7.maxU(cutTime,:),...
    fsT8.maxU(cutTime,:),...
    fsT9.maxU(cutTime,:),...,...
    fsT10.maxU(cutTime,:)]./va;

yyaxis left
scatter(nfs,u,300,'filled'); hold on
yyaxis right
scatter(nfs,n,300,'filled');
ylabel('peak N [cm^{-3}]')
yyaxis left

box on; grid on
xlabel('FS Uperp [SW Uperp]')
ylabel('SW U [v_A]')
% legend('location','southeast')
title('Foreshock Ion Thermal Speed at t='+string(cutTime))


% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FSUperp_',string(cutTime));
%      
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

P = polyfit(nfs,u,1);
vperp_slope = [vperp_slope,P(1)];
end
%% Ratio between perp/para
% figure; set(gcf,'color','w');
% plot(0.5:0.5:16,(vperp_slope./vpara_slope));
% box on; grid on
% xlabel('Time [\Omega_i]','fontsize',14)
% ylabel('Ratio of FS Thermal/Parallel Speeds [#]','FontSize',14)
% % legend('location','southeast')
% title('Ratio of FS Thermal/Parallel Speeds vs Time','fontsize',14)
% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','FS ThermalParallel Ratio');
%      
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);
%% Shear
[Slope] = calculateSlopeperTime(...
     sind(2./3.*[15,30,45,60,75,90,105,120,135,150,165,180]),...
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
    d180.maxU(:,:)]./va,'Magnetic Shear',[0.12]);



for cutTime = [14]
% cutTime = 14;
figure; set(gcf,'color','w');


nfs = sind(2./3.*[15,30,45,60,75,90,105,120,135,150,165,180]);
n = [d15.peakN(cutTime,:),...
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
    d180.peakN(cutTime,:)]./n0;

u = [d15.maxU(cutTime,:),...
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
    d180.maxU(cutTime,:)]./va;



yyaxis left
scatter(nfs,u,300,'filled'); hold on
yyaxis right
scatter(nfs,n,300,'filled');
ylabel('peak N [cm^{-3}]')
yyaxis left

box on; grid on
xlabel('Magnetic Shear [\theta]')
ylabel('SW U [v_A]')
% legend('location','southeast')
title('TD Magnetic Shear Angle at t='+string(cutTime))
xlim([0 1])

fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','MagneticShear2_',string(cutTime));
    
print(gcf,'-dpng','-r300','-loose',fileNamePNG);
end
%% Model Speed vs Exp Speed
% slopeofExpOverModel1 = [];
slopeofExpOverModel_nfs = [];
% slopeofExpOverModel3 = [];
Times = [8:16];
for cutTime =Times
%     omega_ideltaT = outputSteps*dt*cutTime;


% x1 = [calculateModelSpeed(dt,outputSteps,cutTime,0.06,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.08,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.105,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.12,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.14,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.165,10,20,0,90),...
%     calculateModelSpeed(dt,outputSteps,cutTime,0.18,10,20,0,90)];

x_nfs = [calculateModelSpeed(dt,outputSteps,cutTime,0.06,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.08,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.105,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.12,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.14,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.165,10,20,8,90),...
    calculateModelSpeed(dt,outputSteps,cutTime,0.18,10,20,8,90)];
% 
% x3 = [fs6.expSpeed(cutTime,:),...
%     fs8.expSpeed(cutTime,:),...
%     fs105.expSpeed(cutTime,:),...
%     fs12.expSpeed(cutTime,:),...
%     fs14.expSpeed(cutTime,:),...
%     fs165.expSpeed(cutTime,:),...
%     fs18.expSpeed(cutTime,:)];

y_nfs = [fs6.maxU(cutTime,:),...
    fs8.maxU(cutTime,:),...
    fs105.maxU(cutTime,:),...
    fs12.maxU(cutTime,:),...
    fs14.maxU(cutTime,:),...
    fs165.maxU(cutTime,:),...
    fs18.maxU(cutTime,:)]./va;
%       fs6.maxU(cutTime,:);...
%       fs8.maxU(cutTime,:);...
%     fs105.maxU(cutTime,:);...
%      fs12.maxU(cutTime,:);...
%      fs14.maxU(cutTime,:);...
%     fs165.maxU(cutTime,:);...
%      fs18.maxU(cutTime,:);...
%        M6.maxU(cutTime,:);...
%        M8.maxU(cutTime,:);...
%       M10.maxU(cutTime,:);...
%       M12.maxU(cutTime,:);...
%       M14.maxU(cutTime,:);...
%       M16.maxU(cutTime,:);...
%     FSv12.maxU(cutTime,:);...
%     FSv16.maxU(cutTime,:);...
%     FSv20.maxU(cutTime,:);...
%     FSv24.maxU(cutTime,:);...
%     FSv28.maxU(cutTime,:);...
%      fsT4.maxU(cutTime,:);...
%      fsT5.maxU(cutTime,:);...
%      fsT6.maxU(cutTime,:);...
%      fsT7.maxU(cutTime,:);...
%      fsT8.maxU(cutTime,:);...
%      fsT9.maxU(cutTime,:);...
%     fsT10.maxU(cutTime,:);...
%       d15.maxU(cutTime,:);...
%       d30.maxU(cutTime,:);...
%       d45.maxU(cutTime,:);...
%       d60.maxU(cutTime,:);...
%       d75.maxU(cutTime,:);...
%       d90.maxU(cutTime,:);...
%      d105.maxU(cutTime,:);...
%      d120.maxU(cutTime,:)



% % u = [fs6.maxU(cutTime,:),...
% %     fs8.maxU(cutTime,:),...
% %     fs105.maxU(cutTime,:),...
% %     fs12.maxU(cutTime,:),...
% %     fs14.maxU(cutTime,:),...
% %     fs165.maxU(cutTime,:),...
% %     fs18.maxU(cutTime,:)]./va;
% % yyaxis left

% figure; set(gcf,'color','w');
% scatter(x2,y,300,'filled'); hold on
% % % yyaxis right
% % % scatter(nfs,n,300,'filled');
% % % ylabel('peak N [cm^{-3}]')
% % % yyaxis left
% % 
% box on; grid on
% xlabel('Model Speed [v_A]')
% ylabel('Expansion Speed [v_A]')
% % legend('location','southeast')
% title('Exp. vs Model Speed without Comp. Ratio with Thermal at t='+string(cutTime./2))
% % P1 = polyfit(x1,y,1);
P_nfs = polyfit(x_nfs,y_nfs,1);
% % P3 = polyfit(x3,y,1);
% % slopeofExpOverModel1 = [slopeofExpOverModel1,P1(1)];
slopeofExpOverModel_nfs = [slopeofExpOverModel_nfs,P_nfs(1)];
% % slopeofExpOverModel3 = [slopeofExpOverModel3,P3(1)];


end
% %For 0 thermal speed
% figure
% set(gcf,'color','w');
% scatter(Times./2,slopeofExpOverModel1,100,'filled')
% xlabel('Time [\Omega_i]')
% ylabel('Slope of Exp./Model Speeds [#]')
% % legend('location','southeast')
% title('Slope of Exp/Model Speeds vs Time without Comp. Ratio without Thermal')
% grid on
% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','modelvsExpSlope_withoutCompRatio_withoutThermal');
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

%For 8 thermal speed
figure
set(gcf,'color','w');
scatter(Times./2,slopeofExpOverModel_nfs,100,'filled')
xlabel('Time [\Omega_i]')
ylabel('Slope of Exp./Model Speeds [#]')
ylim([0 2])
% legend('location','southeast')
title('Slope of Exp/Model Speeds vs Time')
grid on
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','modelvsExpSlope');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

% %Late stage, with compression ratio
% figure
% set(gcf,'color','w');
% scatter(Times./2,slopeofExpOverModel3,100,'filled')
% xlabel('Time [\Omega_i]')
% ylabel('Slope of Exp./Model Speeds [#]')
% % legend('location','southeast')
% title('Slope of Exp/Model Speeds vs Time with Comp. Ratio with Thermal')
% grid on
% fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','modelvsExpSlope_withCompRatio_withThermal');
% print(gcf,'-dpng','-r300','-loose',fileNamePNG);

%% Functions
function [modelSpeed] = calculateModelSpeed(dt,outputSteps,time,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)
%modelSpeed = time./2 *nfs_setup * ( (0.125*fsSpeed_setup + 0.2*swSpeed_setup*cosd(0))*sind(shear_setup/2) + 0.6*fsThermal_setup); %.* dt*outputSteps*time;

shear_setup = sind(2/3*shear_setup);
modelSpeed = (time./2).^2.*(0.034375*nfs_setup*shear_setup*fsSpeed_setup + -0.046534*nfs_setup*shear_setup*swSpeed_setup +0.021704*nfs_setup*fsThermal_setup);
end

%% Calculate and PLot Slope Over Time
function [Times,Slope] = calculateSlopeperTime(parameterVector,UzMatrix,ParameterName,nfs)
Slope=[];
Times = [1:1:length(UzMatrix)];
UzMatrix = UzMatrix';
for cutTime = Times
    P = polyfit(parameterVector',UzMatrix(:,cutTime),1);
    Slope = [Slope,P(1)];
end
%Plot the Slope vs Time Graph 
figure
set(gcf,'color','w');
scatter(Times./2,Slope./(Times./2)./nfs,100,'filled')
xlabel('Time [\Omega_i]','fontsize',12)
ylabel(strcat('Slope of ',{' '},string(ParameterName),'/\Omega_i\Deltatn_{fs}'),'fontsize',12)
% legend('location','southeast')
title(strcat('Slope of ',{' '},string(ParameterName), ' vs Time'),'fontsize',14)
grid on
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','SlopeOf',string(ParameterName),'vsTime');
print(gcf,'-dpng','-r300','-loose',fileNamePNG);

end
%%
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
    Bmag = ( (Bxdata_interp).^2 + (Bydata_interp).^2 + (Bzdata_interp).^2 ).^(1/2)/B0 - ( (Bxdata_interp0).^2 + (Bydata_interp0).^2 + (Bzdata_interp0).^2 ).^(1/2)/B0;
    
    
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
        maxJx = max(abs(Jperpx_mixed(:,xcut)));
        maxJy = max(abs(Jperpy_mixed(:,xcut)));
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
    maxU(i,:) = max(((upx_cold_data_interp(:,xcut)-upx_cold_data_interp0(:,xcut)).^2 + upz_cold_data_interp(:,xcut).^2).^(1/2));
    minUx(i,:) = min(upx_cold_data_interp(:,xcut));
    
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
   
    peakN(i,:) = Nmax;
    [Nmax,NmaxIndex] = max(n_cold_data_interp(:,xcut));
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
    JswdotEallxz(i) = sum(sum(JswdotEallx))./(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
    ke_coldallxz(i) = sum(ke_coldallx(i,:))./(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
    JfsdotEallxz(i) = sum(sum(JfsdotEallx))./(nx*lambda_i*1000*nz*lambda_i*1000*1*lambda_i*1000);
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
end

%Energy Density Plot vs Time


if i==64
figure;
 set(gcf,'color','w');
hold off
%     yyaxis left
load('/import/c1/DAYSIDE/atvu/swkecold.mat')
plot([dt*outputSteps:dt*outputSteps:time],ke_coldallxz-ke_coldallxz_sw,'b-','linewidth',1.5); hold on
% semilogy([dt*outputSteps:dt*outputSteps:time],ke_coldallxz_sw,'b.','linewidth',1.5); hold on
plot([dt*outputSteps:dt*outputSteps:time],abs(JswdotEallxz)-ke_coldallxz_sw,'b--','linewidth',1.5)
plot([dt*outputSteps:dt*outputSteps:time],abs(JfsdotEallxz),'r--','linewidth',1.5)

%     yyaxis right
%     plot(JfsdotE(i,:)); %0.5 = outpuSteps * dt. deltaT
title('Energy Density vs Time','fontsize',16)
ylabel('Energy Density [kg/(m s^2)]','fontsize',14)
xlabel('Time [\Omega_i]','fontsize',14)
%     xlim([nz/2-50 nz/2+50])
grid on
legend({'SW KE','SW |\SigmaJ\cdotE\Deltat|', 'FS  |\SigmaJ\cdotE\Deltat|'},'fontsize',14,'location','northwest')
% legend({'SW KE','SW KE (no FS)','SW |\SigmaJ\cdotE\Deltat|', 'FS  |\SigmaJ\cdotE\Deltat|'},'fontsize',14,'location','northwest')
fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/Paper3/','EnergyDensityvsTime6');
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



Run.nfs = nfs_setup;
Run.vfspara = fsSpeed_setup;
Run.vswpara = swSpeed_setup;
Run.shear = sind(2/3*shear_setup);
Run.vfsperp = fsThermal_setup;

end
