function result= Gaussian_Tas(img1)
   gama=6;
    valeur=9;
image=img1;
[m,n]=size(img1);
filtre = ones(valeur,valeur);

for i=1:valeur
    for j=1:valeur
    va=-1*(i*i+j*j)/(2*gama*gama);
    filtre(i,j)=double(1/2*pi*(gama^2))*exp(va);
    end
end
som = sum(sum(filtre));
d = ceil(valeur/2);
for i = d:m-d+1
    for j = d:n-d+1
        im=img1(i-d+1:i+d-1,j-d+1:j+d-1);
         im = double(im);
        image(i,j)= sum(sum(filtre.*im))/som;
        
    end
end
result=image;
end