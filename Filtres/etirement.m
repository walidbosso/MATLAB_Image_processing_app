function resultat=etirement(a)
a=double(a);
l=size(a,1);
c=size(a,2);
a_min=min(a(:));
a_max=max(a(:));
for ng=1:256
    LUT(ng)=(255*(ng-a_min))/(a_max-a_min);
end

b=a;

for i=1:l
    for j=1:c
        b(i,j)=LUT(a(i,j)+1);
    end
end
b=uint8(b);

resultat=b;

%{
a=double(a);
a_min=min(a(:));
a_max=max(a(:));
b=255*(a-a_min)/(a_max-a_min);
b=uint8(b);
resultat=b;
%}
end

