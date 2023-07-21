function s= seuillage(im,s)
% im=imread('tetouan.jpg');
% s=120;
[l,c]=size(im);
seuil=im;
for i=1:l
    for j=1:c
    if im(i,j)>s
        seuil(i,j)=255;
    else
        seuil(i,j)=0;
    end
    end
end
s = seuil ;
end