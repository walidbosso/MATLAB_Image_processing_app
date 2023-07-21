function res=fourier_invers1(img1,img2)
fftA=fft2(double(img1));
fftB=fft2(double(img2));
fftC=abs(fftA).*exp(i*angle(fftB));
fftD=abs(fftB).*exp(i*angle(fftA));
imageC=ifft2(fftC);
imageD=ifft2(fftD);
%calculete limite for plotting
cmin=min(min(min(abs(imageC))));
cmax=max(max(max(abs(imageC))));
dmin=min(min(min(abs(imageD))));
dmax=max(max(max(abs(imageD))));

res=abs((imageC/255),[cmin,cmax]);
end