function [data_interp] = interpolate_Data(Data,component,t,nx,nz,X,Z,X2,Z2)
    if component ~= 0
        data_interp=reshape(Data(t,:,1,:,component),[nx,nz]);%-reshape(Data(1,:,2,:,component),[nx,nz]);
%         data_interp=interp2(X,Z,data_interp,X2,Z2,'linear');
        data_interp=data_interp';
    else
        data_interp=reshape(Data(t,:,1,:),[nx,nz]);%-reshape(Data(1,:,2,:),[nx,nz]);
%         data_interp=interp2(X,Z,data_interp,X2,Z2,'linear');
        data_interp=data_interp';
    end
    
end
