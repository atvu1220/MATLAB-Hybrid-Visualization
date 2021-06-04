function [cc] = crossf2(aa,btc)
dims = size(btc);
cc = zeros(size(btc));
ct = zeros(size(btc));

aa = periodic_y(aa);
btc = periodic_y(btc);
for t=1:dims(1)
    for i=2:dims(2)-1
        for j=2:dims(3)-1
            for k=2:dims(4)-1

                ax = aa(t,i,j,k,1);
                bx = btc(t,i,j,k,1);
                
                ay = aa(t,i,j,k,2);
                by = btc(t,i,j,k,2);
                
                az = aa(t,i,j,k,3);
                bz = btc(t,i,j,k,3);
                
                ct(t,i,j,k,1) = ay*bz - az*by;
                ct(t,i,j,k,2) = az*bx - ax*bz;
                ct(t,i,j,k,3) = ax*by - ay*bx;
                
               
                
            end
        end
    end
    
end

ct = periodic_y(ct);

for t=1:dims(1)
    for i=2:dims(2)-1
        for j=2:dims(3)-1
            for k=2:dims(4)-1
                ip = i+1;
                jp = j+1;
                kp = k+1;
                
                cc(t,i,j,k,1) = 0.5*( ct(t,i,j,k,1) + ct(t,ip,j ,k ,1) );
                cc(t,i,j,k,2) = 0.5*( ct(t,i,j,k,2) + ct(t,i ,jp,k ,2) );
                cc(t,i,j,k,3) = 0.5*( ct(t,i,j,k,3) + ct(t,i ,j ,kp,3) );
                
            end
        end
    end
    
end

cc = periodic_y(cc);
end

