function [vparax,vparay,vparaz,vperpx,vperpy,vperpz] = calculate_componentsVector(Bx,By,Bz,vx,vy,vz)
%Calculate the vector components of the parallel and perpendicular components of
%the vector
B = (Bx.^2 + By.^2 + Bz.^2).^(1/2);

vpara = (vx.*Bx + vy.*By + vz.*Bz)./B;
vparax = vpara .* (Bx./B);
vparay = vpara .* (By./B);
vparaz = vpara .* (Bz./B);
vperpx = vx - vparax;
vperpy = vy - vparay;
vperpz = vz - vparaz;

end

