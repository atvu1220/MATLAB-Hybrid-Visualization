function [vpara,vperp] = calculate_components(Bx,By,Bz,vx,vy,vz)
%Calculate the magnitude of the parallel and perpendicular components of
%the vector
B = (Bx.^2 + By.^2 + Bz.^2).^(1/2);
vpara = Bx.*vx./B + By.*vy./B + Bz.*vz./B;
vperp = ((vx - vpara.*Bx./B).^2 + (vy -vpara.*By./B).^2 + (vz -vpara.*Bz./B).^2).^(1/2);
%sign 


end

