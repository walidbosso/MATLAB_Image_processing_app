function res = FiltreMoyenne(img,val)
newimg=img;
[l,c]=size(img);
matfiltre=ones(val,val);
som=sum(sum(matfiltre));
depart=ceil(val/2);
for i=depart:l-depart+1
    for j=depart:c-depart+1
        bloc=img(i-depart+1:i+depart-1,j-depart+1:j+depart-1);
        bloc = double(bloc);
        newimg(i,j)=sum(sum(matfiltre.*bloc))/som;
    end
end
res=newimg;
end
