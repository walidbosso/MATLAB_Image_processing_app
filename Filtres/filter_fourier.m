function filter_fourier(I)
F=fftshift(fft2(I)); %calcul de la taille de l'image;
M=size(F,1);
N=size(F,2);
P=size(F,3);
H0=zeros(M,N); D0=3; M2=round(M/2); N2=round(N/2);
H0(M2-D0:M2+D0,N2-D0:N2+D0)=1;
for i=1:M
for j=1:N
G(i,j)=F(i,j)*H0(i,j);
end
end
g=ifft2(G);
imshow(abs(g),[0,255]);
end