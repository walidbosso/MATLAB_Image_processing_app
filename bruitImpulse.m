function Ir = bruitImpulse(image)
if size(image,3)==3
%image=rgb2gray(image);
end
image = im2double(image);
p = 0.4;
Ir = (image + p*rand(size(image)))/(1+p);

end