function  res = bruit(img)
newimg=img;
p4=0.5;
imgDouble=im2double(newimg);
imgB=imgDouble+sqrt(p4)*rand(size(imgDouble));
res = imgB;
end