function [beta] = get_beta(Ni_tot_sys,nf_init,qx,qy,qz,nx,ny,nz)
    vol = (qx(nx-1)-qx(1))*(qy(ny-1)-qy(1))*(qz(nz-1)-qz(1));
    beta = (Ni_tot_sys/vol)/nf_init;
end