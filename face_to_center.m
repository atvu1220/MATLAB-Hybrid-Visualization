function [c] = face_to_center(v)
c= zeros(size(v));
dims = size(v);
v = periodic_y(v);
for t=1:dims(1)
    for i=2:dims(2)
        for j=2:dims(3)
            for k=2:dims(4)
                im=i-1;
                jm=j-1;
                km=k-1;
                
                c(t,i,j,k,1) = 0.5*( v(t,i,j,k,1)-v(t,im,j,k,1) ) + v(t,im,j,k,1);
                c(t,i,j,k,2) = 0.5*( v(t,i,j,k,2)-v(t,i,jm,k,2) ) + v(t,i,jm,k,2);
                c(t,i,j,k,3) = 0.5*( v(t,i,j,k,3)-v(t,i,j,km,3) ) + v(t,i,j,km,3);
            end
        end
    end
end
c=periodic_y(c);
end

