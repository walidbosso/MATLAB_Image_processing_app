[f,p]=uigetfile('*','selection de fichier');
S = imread(fullfile(p,f));
subplot(3,1,1); imshow(S);
FS = fft2(double(S));
module = abs(fftshift(FS));
Max = max(max(max(abs(module))));
subplot(3,1,2);imshow(module *255/Max);colormap gray
 

phase = angle(fftshift(FS));
subplot(3,1,3);
imshow(phase,[-pi,pi]);colormap gray
