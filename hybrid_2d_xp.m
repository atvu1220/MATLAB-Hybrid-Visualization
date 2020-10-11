%Plots Position Data of particles
clear all
close all
int='int32';real='float32';
[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates();
col=3
oneCelllength=101 %km
nParticles = 1;
cd '/Users/andrewvu/Library/Mobile Documents/com~apple~CloudDocs/Hybrid_Output/output21'
fileName = 'c.xp_0.dat'
[fid,~]=fopen(fileName,'r','n')

f2=zeros(nt,1,3);

for i=1:nt
    fread(fid,4,int)
    f=fread(fid,1*col,real)
    fread(fid,1,int)
    f=reshape(f,[1,col])
    f2(i,1,:)=f
end

%plotting
x = f2(:,:,1)
z = f2(:,:,3)

comet(x,z)
xlim([qx(1) qx(end)])
ylim([qz(1) qz(end)])
