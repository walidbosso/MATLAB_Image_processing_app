function res=FiltreGaussien(img,gama,val)
newimg=img;
[l,c]=size(img);
matfiltre=zeros(val,val);
depart=ceil(val/2);
x=depart-1;
for i=1:val
    for j=1:val
        a=exp(-((i^2 + j^2)/(2*(gama^2)))); 
        b=double(1/(2*pi*(gama^2)));
        matfiltre(i,j)=a*b;
    end
end
som=sum(sum(matfiltre));
matfiltre=matfiltre./som;
for i=depart:l-x;
    for j=depart:c-x;
        bloc=img(i-x:i+x,j-x:j+x);
        bloc=double(bloc);
        newimg(i,j)=sum(sum(matfiltre.*bloc));
    end
end
res=newimg;
end
