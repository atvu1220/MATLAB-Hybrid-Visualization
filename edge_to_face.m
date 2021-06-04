function [btmf] = edge_to_face(bt)
dims=size(bt);
btc = zeros(size(bt));

bt = periodic_y(bt);
for t=1:dims(1)
    for i=2:dims(2)
        for j=2:dims(3)
            for k=2:dims(4)
                im=i-1;
                jm=j-1;
                km=k-1;
                
                b2 = bt(t,i,jm,k ,1) + 0.5*(bt(t,i,j,k ,1) -bt(t,i,jm,k ,1));
                b1 = bt(t,i,jm,km,1) + 0.5*(bt(t,i,j,km,1) -bt(t,i,jm,km,1));
                
                btc(t,i,j,k,1) = b1 + 0.5*(b2-b1);
                
                b2 = bt(t,im,j,k ,2) + 0.5*(bt(t,i,j,k ,2) -bt(t,im,j,k,2));
                b1 = bt(t,im,j,km,2) + 0.5*(bt(t,i,j,km,2) -bt(t,im,j,km,2));
                
                btc(t,i,j,k,2) = b1 + 0.5*(b2-b1);
                
                b2 = bt(t,i ,jm,k,3) + 0.5*(bt(t,i ,j,k,3) -bt(t,i ,jm,k,3));
                b1 = bt(t,im,jm,k,3) + 0.5*(bt(t,im,j,k,3) -bt(t,im,jm,k,3));
                
                btc(t,i,j,k,3) = b1 + 0.5*(b2-b1);
                
                
            end
        end
    end
    
end

btc = periodic_y(btc);
btmf = zeros(size(bt));
for t=1:dims(1)
    for i=2:dims(2)-1
        for j=2:dims(3)-1
            for k=2:dims(4)-1

                btmf(t,i,j,k,1) = 0.5*( btc(t,i,j,k,1) + btc(t,i+1,j,k,1) );
                btmf(t,i,j,k,2) = 0.5*( btc(t,i,j,k,2) + btc(t,i,j+1,k,2) );
                btmf(t,i,j,k,3) = 0.5*( btc(t,i,j,k,3) + btc(t,i,j,k+1,3) );
                
            end
        end
    end
    
end


end

