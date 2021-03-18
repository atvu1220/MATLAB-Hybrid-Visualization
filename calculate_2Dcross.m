function [Cx,Cy,Cz] = calculate_2Dcross(Ax,Ay,Az,Bx,By,Bz)
%Cross product for 2-D Matrix.

Cx = Ay.*Bz - Az.*By;
Cy = Az.*Bx - Ax.*Bz;
Cz = Ax.*By - Ay.*Bx;

end

