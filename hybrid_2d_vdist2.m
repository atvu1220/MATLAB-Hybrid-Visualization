%Plots Position Data of particles
clear all
close all
cd '/Users/andrewvu/Library/Mobile Documents/com~apple~CloudDocs/Hybrid_Output/output27'

int='int32';real='float32';
[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates();
% nt=5%floor(3596/10)
dt = 0.025;
numproc = 4;
col=3;
oneCelllength=101; %km
nParticles = 1;
nmax = 100;

%Search for files in directory
directory_structure = dir(pwd);

%Get the filenames of all n,x,v files, for all processes
all_filenames = {directory_structure(:,1).name};
number_of_filenames = size(all_filenames,2); %subtract 2 for .. and .,

nSC_filenames_indices = contains(all_filenames, 'nSC_');
nSC_filenames = all_filenames((nSC_filenames_indices==1));

xSC_filenames_indices = contains(all_filenames, 'xSC_');
xSC_filenames = all_filenames((xSC_filenames_indices==1));

vSC_filenames_indices = contains(all_filenames, 'vSC_');
vSC_filenames = all_filenames((vSC_filenames_indices==1));

%Create matrices for all n,x,v values
procnum=length(nSC_filenames);

n=zeros(nt,procnum,1);
x=zeros(nt,procnum,nmax,3);
v=zeros(nt,procnum,nmax,4);

for proc=1:procnum
    %Get the data from each process, one at a time
    proc
    fileName = string(nSC_filenames(proc))
    [fid0,~]=fopen(fileName,'r','n');
    
    
    fileName = string(xSC_filenames(proc))
    [fid1,~]=fopen(fileName,'r','n');
    
    
    fileName = string(vSC_filenames(proc))
    [fid2,~]=fopen(fileName,'r','n');
    
    
    
    for i=1:nt
        %Get n for each time step
        fread(fid0,4,int);
        f=fread(fid0,1,int);
        fread(fid0,1,int);
        f=reshape(f,[1,1]);
        n(i,proc)=f;
        %     n(i) = 100
        
        %Get x for each time step
        fread(fid1,4,int);
        f=fread(fid1,nmax*3,real);
        fread(fid1,1,int)
        f=reshape(f,[nmax,3]);
        f1 = [f;zeros(nmax - length(f),3)];
        x(i,proc,:,:)=f1;
        
        %Get v for each time step
        fread(fid2,4,int);
        f=fread(fid2,nmax*4,real);
        fread(fid2,1,int)
        f=reshape(f,[nmax,4]);
        f2 = [f;zeros(nmax - length(f),4)];
        v(i,proc,:,:)=f2;
           
    end
    
end

%Combine all n,x,v from each spacecraft into a single matrix for each time step
alln = sum(n,2);
allvbeta = reshape(v,[nt,numproc*nmax,4]);
allv = allvbeta(:,:,1:3);
allbeta = allvbeta(:,:,4);

rbins = 0:25:800;
thetabins = linspace(0,360,32);
X = rbins'*cosd(thetabins);
Y = rbins'*sind(thetabins);
%Plotting distribution
for i=1:nt
    %Bins
    r = allbeta(i,:).*(allv(i,:,1).^2 + allv(i,:,2).^2).^(1/2);
    theta = atand(allv(i,:,2)./allv(i,:,1));
    Cphi = histcounts2(r,theta,[rbins inf],[thetabins inf])./alln(i);
    h = pcolor(X,Y,Cphi) ;
    set(h, 'EdgeColor', 'none');
    myColorMap = parula(256); myColorMap(1,:) = 1;
    colormap(myColorMap); colorbar
    %scatter(allv(i,:,1)./allbeta(i,:),allv(i,:,3)./allbeta(i,:),50,'filled','linewidth',2,'MarkerEdgeColor','k')
    % ax = gca;
    % ax.XAxisLocation = 'origin'
    % ax.YAxisLocation = 'origin'
    title(strcat('Ion Velocities at t=',string(dt*1),' gyroperiods'),'FontSize',18);
    xlabel({'Vx';'[km/s]'},'FontSize',14);
    ylabel({'Vz';'[km/s]'},'FontSize',14)
    box on
    
    ylim([-600 600])
    xlim([-600 600])
    line([0 0],ylim,'Color','Black','linewidth',1)
    line(xlim,[0 0],'Color','Black','linewidth',1)
    set(gcf,'color','w');
    grid on
    set(gca,'XMinorTick','off','TickDir','out','YMinorTick','on','linewidth',2)
    %set(gcf, 'EdgeColor', 'none');
    drawnow
end