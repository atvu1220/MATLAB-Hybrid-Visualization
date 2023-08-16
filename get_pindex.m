function [ijkp] = get_pindex(l,ijkp,xp,qx,qy,qz,nx,ny,nz,dx,dy,dz)

%x index of particle
i=1; 
hi = nx;
while 1
    mid = floor((i+hi)/2);
    if (xp(l,1) < qx(mid))
        hi = mid;
    else
        i = mid;
    end
    if (i+1 >= hi)
        break;
    end
end
ijkp(l,1) = i;

%y index of particle
j=floor(xp(l,2)/dy);
ijkp(l,2) = j;

%z index of particle
k=1;
hi = nz;
while 1
    mid = ceil((k+hi)/2);
    if (xp(l,3) < qz(mid))
        hi = mid;
    else
        k=mid;
    end
    if (k+1 >= hi)
        break;
    end
end 
ijkp(l,3) = k;


end