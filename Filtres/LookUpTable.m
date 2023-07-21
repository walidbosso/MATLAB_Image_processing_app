function res = LookUpTable(image,min,max)
vecteurLut = ones(1,256);

for i=1:256
    vecteurLut(i) = (255*(i-min))/(max-min);
end

[l,c] = size(image);
for i=1:l
    for j=1:c
        image(i,j) = vecteurLut(image(i,j)+1);
    end
end
res = image;
end
