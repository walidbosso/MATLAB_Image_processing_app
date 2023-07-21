function res = FiltreMedian(img ,val)

[l,c]=size(img);
newimg=img ;
p=val*val;
v=zeros(l,p);
depart=floor(val/2)+1;
x=depart-1;
for i=depart:l-x
    for j=depart:c-x
        bloc = img(i-x:i+x,j-x:j+x);
        v=bloc(:);
        v=sort(v);
        newimg(i,j)=v(floor(p/2)+1);
    end
end
res = newimg;
end