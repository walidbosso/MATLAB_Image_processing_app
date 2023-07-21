function res = histograme(img)
[l,c] = size(img);
h =zeros(256,1);
for i=1:l
    for j=1:c
       x = round(img(i,j));
        h(x+1) = h(x+1)+1;
    end
end
res =h;
end



