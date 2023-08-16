function [dx_grid,dy_grid,dz_grid,qx,qy,qz] = grd7(nx,ny,nz,dx,dy,dz)

qx = zeros(nx,1);
qy = zeros(ny,1);
qz = zeros(nz,1);

dx_grid = zeros(nx,1);
dy_grid = zeros(ny,1);
dz_grid = zeros(nz,1);

for i=1:nx
    qx(i) = i*dx;
    dx_grid(i) = dx;
end

for j=1:ny
    qy(j) = j*dy;
    dy_grid(j) = dy;
end

for k=1:nz
    qz(k) = k*dz;
    dz_grid(k) = dz;
end

end