function resultat=negatif(a)
a=double(a);
l=size(a,1);
c=size(a,2);
b=a;
for i=1:l
    for j=1:c
        b(i,j)=255-a(i,j);
    end
end
b=uint8(b);
resultat=b;
end