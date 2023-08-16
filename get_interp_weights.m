function [wght,ijkp] = get_interp_weights(ijkp,xp,Ni_tot,qx,qy,qz,nx,ny,nz,dx,dy,dz)
    wght = zeros(Ni_tot,8);



    for l=1:Ni_tot
        ijkp = get_pindex(l,ijkp,xp,qx,qy,qz,nx,ny,nz,dx,dy,dz);
        i=ijkp(l,1);
        j=ijkp(l,2);
        k=ijkp(l,3);

        vol = 1/( (qx(i+1)-qx(i)) * (qy(j+1)-qy(j)) * (qz(k+1)-qz(k)));

        %         x1 = abs(xp(l,1)-qx(i));
        %         x2 = abs(xp(l,1)-qx(i+1));
        %
        %         y1 = abs(xp(l,2)-qy(j));
        %         y2 = abs(xp(l,2)-qy(j+1));
        %
        %         z1 = abs(xp(l,3)-qz(k));
        %         z2 = abs(xp(l,3)-qz(k+1));
        %
        %         wght(l,1) = x2*y2*z2*vol;
        %         wght(l,2) = x1*y2*z2*vol;
        %         wght(l,3) = x2*y2*z1*vol;
        %         wght(l,4) = x1*y2*z1*vol;
        %         wght(l,5) = z2*y1*z2*vol;
        %         wght(l,6) = x1*y1*z2*vol;
        %         wght(l,7) = x2*y1*z1*vol;
        %         wght(l,8) = x1*y1*z1*vol;

        x1=abs(xp(l,1)-qx(i));
        x2=abs(xp(l,1)-qx(i+1));
        y1=abs(xp(l,2)-qy(j));
        y2=abs(xp(l,2)-qy(j+1));
        z1=abs(xp(l,3)-qz(k));
        z2=abs(xp(l,3)-qz(k+1));

        wght(l,1) = x2*y2*z2*vol;
        wght(l,2) = x1*y2*z2*vol;
        wght(l,3) = x2*y2*z1*vol;
        wght(l,4) = x1*y2*z1*vol;
        wght(l,5) = x2*y1*z2*vol;
        wght(l,6) = x1*y1*z2*vol;
        wght(l,7) = x2*y1*z1*vol;
        wght(l,8) = x1*y1*z1*vol;


    end

end