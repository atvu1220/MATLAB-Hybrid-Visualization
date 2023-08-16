function [ct] = update_up(beta,beta_p,ijkp,np,vp,Ni_tot,wght,nx,ny,nz,qx,qy,qz)

for i=1:nx
    for j=1:ny
        for k=1:nz
            for m=1:3
%                 up(i,j,k,m) = 0.0;
                ct(i,j,k,m) = 0.0;
            end
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

    volb = (qx(ip)-qx(i))*(qy(jp)-qy(j))*(qz(kp)-qz(k))*beta*beta_p(l);

    %                  if(np(i,j,k) .gt. 0.0) then
    nvolb = 1.0/(np(i,j,k)*volb);
    ct(i,j,k,1) = ct(i,j,k,1) + vp(l,1)*wght(l,1)*nvolb;
    ct(i,j,k,2) = ct(i,j,k,2) + vp(l,2)*wght(l,1)*nvolb;
    ct(i,j,k,3) = ct(i,j,k,3) + vp(l,3)*wght(l,1)*nvolb;
    %                  endif

    %                  if (np(ip,j,k) .gt. 0.0) then
    nvolb = 1.0/(np(ip,j,k)*volb);
    ct(ip,j,k,1) = ct(ip,j,k,1) + vp(l,1)*wght(l,2)*nvolb;
    ct(ip,j,k,2) = ct(ip,j,k,2) + vp(l,2)*wght(l,2)*nvolb;
    ct(ip,j,k,3) = ct(ip,j,k,3) + vp(l,3)*wght(l,2)*nvolb;
    %                  endif

    %                  if (np(i,j,kp) .gt. 0.0) then
    nvolb = 1.0/(np(i,j,kp)*volb);
    ct(i,j,kp,1) = ct(i,j,kp,1) + vp(l,1)*wght(l,3)*nvolb;
    ct(i,j,kp,2) = ct(i,j,kp,2) + vp(l,2)*wght(l,3)*nvolb;
    ct(i,j,kp,3) = ct(i,j,kp,3) + vp(l,3)*wght(l,3)*nvolb;
    %                  endif

    %                  if (np(ip,j,kp) .gt. 0.0) then
    nvolb = 1.0/(np(ip,j,kp)*volb);
    ct(ip,j,kp,1) = ct(ip,j,kp,1) + vp(l,1)*wght(l,4)*nvolb;
    ct(ip,j,kp,2) = ct(ip,j,kp,2) + vp(l,2)*wght(l,4)*nvolb;
    ct(ip,j,kp,3) = ct(ip,j,kp,3) + vp(l,3)*wght(l,4)*nvolb;
    %                  endif

    %                  if (np(i,jp,k) .gt. 0.0) then
    nvolb = 1.0/(np(i,jp,k)*volb);
    ct(i,jp,k,1) = ct(i,jp,k,1) + vp(l,1)*wght(l,5)*nvolb;
    ct(i,jp,k,2) = ct(i,jp,k,2) + vp(l,2)*wght(l,5)*nvolb;
    ct(i,jp,k,3) = ct(i,jp,k,3) + vp(l,3)*wght(l,5)*nvolb;
    %                  endif

    %                  if (np(ip,jp,k) .gt. 0.0) then
    nvolb = 1.0/(np(ip,jp,k)*volb);
    ct(ip,jp,k,1) = ct(ip,jp,k,1) + vp(l,1)*wght(l,6)*nvolb;
    ct(ip,jp,k,2) = ct(ip,jp,k,2) + vp(l,2)*wght(l,6)*nvolb;
    ct(ip,jp,k,3) = ct(ip,jp,k,3) + vp(l,3)*wght(l,6)*nvolb;
    %                  endif

    %                  if (np(i,jp,kp) .gt. 0.0) then
    nvolb = 1.0/(np(i,jp,kp)*volb);
    ct(i,jp,kp,1) = ct(i,jp,kp,1) + vp(l,1)*wght(l,7)*nvolb;
    ct(i,jp,kp,2) = ct(i,jp,kp,2) + vp(l,2)*wght(l,7)*nvolb;
    ct(i,jp,kp,3) = ct(i,jp,kp,3) + vp(l,3)*wght(l,7)*nvolb;
    %                  endif

    %                  if (np(ip,jp,kp) .gt. 0.0) then
    nvolb = 1.0/(np(ip,jp,kp)*volb);
    ct(ip,jp,kp,1) = ct(ip,jp,kp,1) + vp(l,1)*wght(l,8)*nvolb;
    ct(ip,jp,kp,2) = ct(ip,jp,kp,2) + vp(l,2)*wght(l,8)*nvolb;
    ct(ip,jp,kp,3) = ct(ip,jp,kp,3) + vp(l,3)*wght(l,8)*nvolb;
    %                  endif

end

ct(nx,:,:,:) = ct(nx-1,:,:,:);

ct(:, 1,:,:) = ct(:,ny-1,:,:);
ct(:,ny,:,:) = ct(:,   2,:,:);

ct(:,:,nz,:) = ct(:,:,   2,:);
ct(:,:, 1,:) = ct(:,:,nz-1,:);
end