function [Jx,Jy,Jz] = calculate_curlB(Bx,Bx1,By,By1,Bz,Bz1,lambda_i,nx_min,nx_max,nz_min,nz_max)
%Calculates the Normalized (CurlB/mu0)/(B0mu0/L0) = DeltaB / B0

Jx = (Bz(nz_min:nz_max,nx_min:nx_max) - Bz1(nz_min:nz_max,nx_min:nx_max))./(4*lambda_i) - (By(nz_min:nz_max,nx_min:nx_max)-By(nz_min-1:nz_max-1,nx_min:nx_max))./lambda_i;
Jy = (Bx(nz_min:nz_max,nx_min:nx_max) - Bx(nz_min-1:nz_max-1,nx_min:nx_max))./lambda_i - (Bz(nz_min:nz_max,nx_min:nx_max) - Bz(nz_min:nz_max,nx_min-1:nx_max-1))./lambda_i;
Jz = (By(nz_min:nz_max,nx_min:nx_max) - By(nz_min:nz_max,nx_min-1:nx_max-1))./lambda_i - (Bx(nz_min:nz_max,nx_min:nx_max) - Bx1(nz_min:nz_max,nx_min:nx_max))./(4*lambda_i);



end

