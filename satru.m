function m=satru(A)
V1 = zeros(1,80);
V2=ones(1,55)*255;
V3=(81:200);
for i=1:120
    V3(1,i) = round((V3(1,i) * 2.125) - 170);
end
LUTT=cat(2,V1,V3,V2);
LUTT=uint8(LUTT);

[l , c] = size(A);
I=A;
for i=1:l
    for j=1:c
        I(i,j)= LUTT(A(i,j)+1) ;
    end
end
m=I;
end