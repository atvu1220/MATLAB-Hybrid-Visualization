function [qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory)
    int='int32';real='float32';
    %%%%%%%%%%%%%%%%%%%READ PARA.DAT%%%%%%%%%%%%%%%%%%%%%%%
    [fid,~]=fopen(strcat(outputDirectory,'/para.dat'),'r','n');
    fread(fid,1,int);
    nx=fread(fid,1,int);ny=fread(fid,1,int);nz=fread(fid,1,int);
    fread(fid,5,int);
    nt=fread(fid,1,int);fread(fid,1,real);fread(fid,1,int);
    dt=fread(fid,1,real);nout=fread(fid,1,int);
    fread(fid,1,int);
    hr=fread(fid,1,int);
    fread(fid,2,int);
    va=fread(fid,1,real);
    
    
    fclose(fid);
    nt=int32(nt/nout);
    %%%%%%%%%%%%%%%%%%%%%%%%READ C.COORD.DAT%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [fid,~]=fopen(strcat(outputDirectory,'/c.coord.dat'),'r','n');
    fread(fid,10,int);
    qx=fread(fid,nx,real);fread(fid,2,int);
    qy=fread(fid,ny,real);fread(fid,2,int);
    qz=fread(fid,nz,real);
    fclose(fid);
    qx=reshape(qx,[1,nx]);
    qy=reshape(qy,[1,ny]);
    qz=reshape(qz,[1,nz]);
end