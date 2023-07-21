function fourierTransformation(imageA,imageB)
fftA=fft2(double(imageA));
fftB=fft2(double(imageB));
fftC=abs(fftA).*exp(1i*angle(fftB));
fftD=abs(fftB).*exp(1i*angle(fftA));
imageC=ifft2(fftC);
imageD=ifft2(fftD);
cmin=min(min(min(abs(imageC))));
cmax=max(max(max(abs(imageC))));
dmin=min(min(min(abs(imageD))));
dmax=max(max(max(abs(imageD))));
subplot(1,2,2);imshow(abs(imageC/255),[cmin cmax]),colormap gray,
title('Image 1 Magnitude');
subplot(1,2,1);imshow(abs(imageD/255),[dmin dmax]),colormap gray,
title('Image 2 Magnitude');
end









