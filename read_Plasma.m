function [f2] = read_Plasma(Plasma,nt,nx,ny,nz,outputDirectory)
    %%%%%%%%%%%%%%%%%%%%%%%%%READ CHOSEN FILE%%%%%%%%%%%%%%%%%%%%%%%%%%
    int='int32';real='float32';
    switch Plasma
        case 'n'
            fileName='/c.np.dat';
            col=1;
        case 'B'
            fileName='/c.b1.dat';
            col=3;
        case 'E'
            fileName='/c.E.dat';
            col=3;
        case 'Momentum'
            fileName='/c.up.dat';
            col=3;
        case 'Current'
            fileName='/c.aj.dat';
            col=3;
        case 'Temp'
            fileName = '/c.temp_p.dat';
            col=1;
        case 'Foreshock'
            fileName = '/c.mixed.dat';
            col=1;
        case 'n_cold'
            fileName = '/c.np_cold.dat';
            col=1;
        case 'n_mixed'
            fileName = '/c.np_mixed.dat';
            col=1;
        case 'temp_cold'
            fileName = '/c.temp_p_cold.dat';
            col=1;
        case 'temp_mixed'
            fileName = '/c.temp_p_mixed.dat';
            col=1;
        case 'up_cold'
            fileName = '/c.up_cold.dat';
            col=3;
        case 'up_mixed'
            fileName = '/c.up_mixed.dat';
            col=3;
        case 'gradP'
            fileName = '/c.gradP.dat';
            col=3;
        case 'temp_xyz'
            fileName = '/c.tp.dat';
            col=3;
        case 'temp_cold_xyz'
            fileName = '/c.tp_cold.dat';
            col=3;
        case 'temp_mixed_xyz'
            fileName = '/c.tp_mixed.dat';
            col=3; 
        case 'ue'
            fileName = '/c.ue.dat';
            col=3;            
            

    end
    fileName = strcat(outputDirectory,fileName);
    [fid,~]=fopen(fileName,'r','n');
    
    if col~=1
        f2=(zeros(nt,nx,ny,nz,col));
        for i=1:nt
            fread(fid,4,int);
            f=fread(fid,nx*ny*nz*col,real);
            fread(fid,1,int);
            f=reshape(f,[nx,ny,nz,col]);
            f2(i,:,:,:,:)=f;
        end
    else
        f2=(zeros(nt,nx,ny,nz));
        for i=1:nt
            fread(fid,4,int);
            f=fread(fid,nx*ny*nz,real);
            fread(fid,1,int);
            f=reshape(f,[nx,ny,nz]);
            f2(i,:,:,:)=f;
        end
    end
end
