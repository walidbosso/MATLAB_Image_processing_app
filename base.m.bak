function res=base(img)
img=im2gray(img);
[l,c]=size(img);
gr_horiz=zeros(l,c);
gr_verti=zeros(l,c);
for i=1:l-1
    for j=1:c-1
        gr_horiz(i,j)=img(i,j+1)-img(i,j);
        gr_horiz(i,j)=img(i,j)-img(i+1,j);
    end
end
m=sqrt(gr_horiz.^2+gr_verti.^2);
res=m;
end