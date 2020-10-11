function [X,Z,X2,Z2] = scale_Data(qx,qz)
    scale=(max(qx)-min(qx))/(max(qz)-min(qz));
    x2=linspace(min(qx),max(qx),scale*200);
    z2=linspace(min(qz),max(qz),200);
    [X,Z]=meshgrid(qz,qx);
    [X2,Z2]=meshgrid(z2,x2);
end
