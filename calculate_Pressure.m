function [Ptherm,PB] = calculate_Pressure(Tdata,Bdata,ndata_interp,i,nx,nz,X,Z,X2,Z2,direction,parameter)
    moverq=1.044e-8;
    [Tdata_interp] = interpolate_Data(Tdata,0,i,nx,nz,X,Z,X2,Z2);
    Size = size(Tdata_interp);
    Size = [nx,nz];
    [Bx] = interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2).*moverq;
    [By] = interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2).*moverq;
    [Bz] = interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2).*moverq;
    
    if strcmp(direction,'vertical')
        T = reshape(Tdata_interp(:,floor(Size(1)/2)),[],1);
        N = reshape(ndata_interp(:,floor(Size(1)/2)),[],1);
        
        Bx = reshape(Bx(:,floor(Size(1)/2)),[],1);
        
        By = reshape(By(:,floor(Size(1)/2)),[],1);
        
        Bz = reshape(Bz(:,floor(Size(1)/2)),[],1);
    elseif strcmp(direction,'horizontal')
        T = reshape(Tdata_interp(floor(Size(1)/2),:),[],1);
        N = reshape(ndata_interp(floor(Size(1)/2),:),[],1);
        
        Bx = reshape(Bx(floor(Size(1)/2),:),[],1);
        
        By = reshape(By(floor(Size(1)/2),:),[],1);
        
        Bz = reshape(Bz(floor(Size(1)/2),:),[],1);
    end
    
    

    
    PB = (Bx.^2 + By.^2 + Bz.^2)/(2*1.25663706*10^-6);
    Ptherm = T.*(1.602e-19).*N.*1e-9*2;%.*((1/2)*2/3); %nf_init, km^-3 to m^-3,
    
    if parameter == 'n'
                T = reshape(Tdata_interp(:,9*floor(Size(1)/10)),[],1);
        N = reshape(ndata_interp(:,9*floor(Size(1)/10)),[],1);
        
        Bx = reshape(Bx(:,9*floor(Size(1)/10)),[],1);
        
        By = reshape(By(:,9*floor(Size(1)/10)),[],1);
        
        Bz = reshape(Bz(:,9*floor(Size(1)/10)),[],1);
        PB = 0.5* reshape(ndata_interp(:,9*floor(Size(1)/10)),[],1);
        Ptherm = 0.5* reshape(ndata_interp(:,9*floor(Size(1)/10)),[],1);
    end
    
end