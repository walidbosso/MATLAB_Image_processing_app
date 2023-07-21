function resultat=ChangementEchelle(a,facY,facX)
a=double(a);

l1=size(a,1);
c1=size(a,2);

l2=facY*l1;
c2=facX*c1;

b=ones(l2,c2);

for i=1:l2
    for j=1:c2
        b(i,j)=a(ceil(i/facY),ceil(j/facX));
    end
end

b=uint8(b);

resultat=b;

end