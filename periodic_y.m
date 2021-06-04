function [b] = periodic_y(b)

dims = size(b);
%X Direction

for t=1:dims(1)
    for j=1:dims(3)
        for k=1:dims(4)
            for m=1:3
                b(t,dims(2),j,k,m) = b(t,dims(2)-1,j,k,m);
            end
        end
    end
end 

%Y Direction
for t=1:dims(1)
    for i=1:dims(2)
        for k=1:dims(4)
            for m=1:3
                b(t,i,1,k,m) = b(t,i,dims(3)-1,k,m);
                b(t,i,dims(3),k,m) = b(t,i,2,k,m);
            end
        end
    end
end 

%Z Direction
for t=1:dims(1)
    for i=1:dims(2)
        for j=1:dims(3)
            for m=1:3
                b(t,i,j,dims(4),m) = b(t,i,j,dims(4)-1,m);
                b(t,i,j,1,m) = b(t,i,j,2,m);
            end
        end
    end
end 


end

