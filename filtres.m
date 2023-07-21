function res=filtres(l,c)
nL=size(l,1);
nC=size(l,2);
c=double(c);
som=sum(sum(c));
if som==0
    som=1;
end
final=l;
debut=ceil(size(c,1)/2);

for i=debut:nL-debut+1
    for j=debut:nC-debut+1
      matr=l(i-debut+1:i+debut-1,j-debut+1:j+debut-1);
       matr=double(matr);
       ma=matr.*c;
       final(i,j)=(sum(sum(ma)))/som;
    end
end
res=final;
end