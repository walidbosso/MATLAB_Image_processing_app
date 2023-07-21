function res=resize(img,a)
[l,c,h]=size(img);
img_zoom=ones(l*a,c*a,h);
for i=1:(l*a)
    for j=1:(c*a)
        if round(i/a)>l
            x=l;
        elseif round(i/a)==0
            x=1;
        else
            x=round(i/a);
        end
        if round(j/a)>c
            y=c;
        elseif round(j/a)==0
            y=1;
        else
            y=round(j/a);
        end
        img_zoom(i,j,:)=img(x,y,:);
    end
end
res=img_zoom;
end
