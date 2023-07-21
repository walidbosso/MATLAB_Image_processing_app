function res=LUT(im , min , max)
%im=imread('tetouan.jpg');
%min = 60;
%max=210;
[l,c]=size(im);
ilut = im;
LUT = zeros(1,256);
for i=1:256
LUT(i)=(255*(i-min))/(max-min);
end
for i=1:l
    for j=1:c
    ilut(i,j)= LUT(im(i,j)+1);
    end
end
res = ilut;
end