%Plots Position Data of particles
clear all
close all
outputFolder = '21';
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/output',outputFolder);
%cd(outputDirectory)
RunNumber= '0';
int='int32';real='float32';
[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory);
% nt=5%floor(3596/10)
timeSteps = 100;
outputSteps = 25;


nt=	floor(timeSteps/outputSteps)
va = 48.95; %km/s
dt = 0.01; output = outputSteps;


numproc = 48;
col=3;
nParticles = 1;
nmax = 1200000;

%Grid
oneCelllength=101.649992187500;
[XX,ZZ] = meshgrid(0:1:nx-1,0:1:nz-1);

%Desired Cell
xSC = 100;
zSC = 100;
neighboring = 5;
%Search for files in directory
directory_structure = dir(outputDirectory);

%Get the filenames of all n,x,v files, for all processes
all_filenames = {directory_structure(:,1).name};
number_of_filenames = size(all_filenames,2); %subtract 2 for .. and .,

% nSC_filenames_indices = contains(all_filenames, 'nSC_');
% nSC_filenames = all_filenames((nSC_filenames_indices==1));

mixed_filenames_indices = contains(all_filenames, 'c.mixed');
mixed_filenames = all_filenames((mixed_filenames_indices==1));


xp_filenames_indices = contains(all_filenames, 'c.xp');
xp_filenames = all_filenames((xp_filenames_indices==1));
xp_filenames(end) = []; %mixed


vp_filenames_indices = contains(all_filenames, 'c.vp');
vp_filenames = all_filenames((vp_filenames_indices==1));

%Create matrices for all n,x,v values
procnum=length(xp_filenames);

mixed=zeros(nt,procnum,nmax,1);
x=zeros(nt,procnum,nmax,3);
v=zeros(nt,procnum,nmax,3);

for proc=2:procnum
    %Get the data from each process, one at a time
    proc;
     fileName = strcat(outputDirectory,strcat('/',string(mixed_filenames(proc))))
     [fid0,~]=fopen(fileName,'r','n');
    
    
    fileName = strcat(outputDirectory,strcat('/',string(xp_filenames(proc))))
    [fid1,~]=fopen(fileName,'r','n');
    
    
    fileName = strcat(outputDirectory,strcat('/',string(vp_filenames(proc))))
    [fid2,~]=fopen(fileName,'r','n');
    
    
    
    for t=1:nt
        %Get n for each time step
        fread(fid0,4,int);
        f=fread(fid0,nmax,real);
        fread(fid0,1,int);
        f=reshape(f,[nmax,1]);
        mixed(t,proc,:,1)=f;
            
        %Get x for each time step
        fread(fid1,4,int);
        f=fread(fid1,nmax*3,real);
        fread(fid1,1,int);
        f=reshape(f,[nmax,3]);
        f1 = [f;zeros(nmax - length(f),3)];
        x(t,proc,:,:)=f1;
        
        
        %Get v for each time step
        fread(fid2,4,int);
        f=fread(fid2,nmax*3,real);
        fread(fid2,1,int);
        f=reshape(f,[nmax,3]);
        f2 = [f;zeros(nmax - length(f),3)];
        v(t,proc,:,:)=f2;
        
        
        
           
    end
    
end

%Combine all n,x,v from each spacecraft into a single matrix for each time step
%Array is (time,particle,
%alln = sum(n,2);

allv= reshape(v,[nt,numproc*nmax,3]);
%allv = allvbeta(:,:,1:3);
allx = reshape(x,[nt,numproc*nmax,3]);
allmixed = reshape(mixed,[nt,numproc*nmax,1]);
%allbeta = allvbeta(:,:,4);
% alln = length(nonzeros(allv(:,:,1)));

%Get the nonzero values only.
% allv2 = allv(:,any(allv,3),:);
% allx2 = allv(:,any(allx,3),:);
% alln2 = length(allv2);


rbins = 0:25:800;
thetabins = linspace(0,360,120);
X = rbins'*cosd(thetabins);
Y = rbins'*sind(thetabins);


%Find the particles within Target Spacecraft cell
xCellRange = XX(2,xSC-neighboring:xSC+neighboring).*oneCelllength;
zCellRange = ZZ(zSC-neighboring:zSC+neighboring,1).*oneCelllength;
% ParticleInCellCount = zeros(nt,1);
ParticleInCellPos=zeros(nt,procnum*nmax,3);
ParticleInCellVel=zeros(nt,procnum*nmax,3);
ParticleInCellMixed=zeros(nt,procnum*nmax,1);
for t=1:nt %Per Each Time
    for i=1:proc*nmax% Per each Particle
        if ((allx(t,i,1) > xCellRange(1) && allx(t,i,1) < xCellRange(end)) &&...
                (allx(t,i,3) > zCellRange(1) && allx(t,i,3) < zCellRange(end)))
            ParticleInCellPos(t,i,:)=allx(t,i,:);
            ParticleInCellVel(t,i,:)=allv(t,i,:);
            ParticleInCellMixed(t,i,:) = allmixed(t,i,:);
%             ParticleInCellCount(t)=ParticleInCellCount(t)+1;
        end
    end
end
% ParticleInCellPos2=ParticleInCellPos;%(:,any(ParticleInCellPos,3),:);
% ParticleInCellVel2=ParticleInCellVel;%(:,any(ParticleInCellVel,3),:);

fileName = strcat('/import/c1/DAYSIDE/atvu/Runs/2d_Hybrid_Foreshock_vDist_Run',RunNumber);
v = VideoWriter(fileName);v.FrameRate= 1;
open(v);
%Plotting distribution
for t=1:nt
    
    %
    
    
    %Bins
    Vr = (ParticleInCellVel(t,:,1).^2 + ParticleInCellVel(t,:,3).^2).^(1/2);
    Vtheta = atand(ParticleInCellVel(t,:,3)./ParticleInCellVel(t,:,1));
    Vtheta(Vtheta < 0) = Vtheta(Vtheta < 0) + 360;
    
    Cphi_cold = histcounts2(Vr(ParticleInCellMixed(t,:)==0),Vtheta(ParticleInCellMixed(t,:)==0),[rbins inf],[thetabins inf]);
    Cphi_mixed = (1/40).*histcounts2(Vr(ParticleInCellMixed(t,:)==1),Vtheta(ParticleInCellMixed(t,:)==1),[rbins inf],[thetabins inf]);

    Cphi = (Cphi_cold+Cphi_mixed )./sum(Cphi_cold+Cphi_mixed,'all');
    
    Cphi(Cphi < 0.0001) = NaN;
    
    h = pcolor(X,Y,Cphi) ;
    set(h, 'EdgeColor', 'none');
    myColorMap = parula(256); myColorMap(1,:) = 1;
    colormap(myColorMap); colorbar
    %scatter(allv(i,:,1)./allbeta(i,:),allv(i,:,3)./allbeta(i,:),50,'filled','linewidth',2,'MarkerEdgeColor','k')
    % ax = gca;
    % ax.XAxisLocation = 'origin'
    % ax.YAxisLocation = 'origin'
    title(strcat('Ion Velocity Distribution at t=',string(dt*t),' gyroperiods'),'FontSize',14);
    xlabel({'Vx';'[km/s]'},'FontSize',12);
    ylabel({'Vz';'[km/s]'},'FontSize',12)
    box on
    
    ylim([-650 650])
    xlim([-650 650])
    axis square
    line([0 0],ylim,'Color','Black','linewidth',1)
    line(xlim,[0 0],'Color','Black','linewidth',1)
    set(gcf,'color','w','Position',[100 100 800 800]);
    grid on
    set(gca,'XMinorTick','off','TickDir','out','YMinorTick','on','linewidth',2)
    %set(gcf, 'EdgeColor', 'none');
    drawnow
    g(t) = getframe(gcf);
    writeVideo(v,g(t));
    textboxPos = [max(xlim) max(ylim)] - [diff(xlim) diff(ylim)]*0.05;
    CellPos = text(textboxPos(1), textboxPos(2),...
        {strcat('x=',string(xSC-neighboring),'-',string(xSC+neighboring)),...
        strcat('z=',string(zSC-neighboring),'-',string(zSC+neighboring))},...
        'VerticalAlignment','top','HorizontalAlignment','right');
    delete(h)
    delete(CellPos);
end

close(v)