function [np] = update_np(beta,beta_p,ijkp,xp,Ni_tot,wght,nx,ny,nz,dx_grid,dy_grid,dz_grid,qx,qy,qz,dx,dy,dz)
count = nx*ny*nz;



%Initialize new matrix for density moments
for i=1:nx
    for j=1:ny
        for k=1:nz
            np(i,j,k) = 0.0;
        end
    end
end

for l=1:Ni_tot
    i=ijkp(l,1);
    j=ijkp(l,2);
    k=ijkp(l,3);

    ip=i+1;
    jp=j+1;
    kp=k+1;

    volb = 1.0/(dx_grid(i)*dy_grid(j)*dz_grid(k)*beta*beta_p(l));

    np(i,j,k) = np(i,j,k) + wght(l,1)*volb;
    np(ip,j,k) = np(ip,j,k) + wght(l,2)*volb;
    np(i,j,kp) = np(i,j,kp) + wght(l,3)*volb;
    np(ip,j,kp) = np(ip,j,kp) + wght(l,4)*volb;
    np(i,jp,k) = np(i,jp,k) + wght(l,5)*volb;
    np(ip,jp,k) = np(ip,jp,k) + wght(l,6)*volb;
    np(i,jp,kp) = np(i,jp,kp) + wght(l,7)*volb;
    np(ip,jp,kp) = np(ip,jp,kp) + wght(l,8)*volb;

end


np(nx,:,:) = np(nx-1,:,:);

np(:,1,:) = np(:,ny-1,:);
np(:,ny,:) = np(:,2,:);

np(:,:,1) = np(:,:,nz-1);
np(:,:,nz) = np(:,:,2);

end