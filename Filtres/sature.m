function res=sature(img)
[l,c]=size(img);
newimg=zeros(l,c);
min_img=min(min(img));
max_img=max(max(img));
for i=1:l
    for j=1:c
        newimg(i,j)=floor((255/(max_img-min_img))*(img(i,j)-min_img));
    end
end

res=newimg;        
end