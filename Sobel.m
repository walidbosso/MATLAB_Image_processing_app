function res= Sobel(im)
    DG=im2double(im);
    [l ,c]=size(DG);
    res=DG;
    for i=2:l-1
        for j=2:c-1
           %derive horizontale
           x=1/4*(DG(i-1,j+1)+2*DG(i,j+1)+DG(i+1,j+1)-DG(i-1,j-1)-2*DG(i,j-1)-DG(i+1,j-1));
           %derive verticale
           y=1/4*(-DG(i-1,j+1)+DG(i+1,j+1)-2*DG(i-1,j)+2*DG(i+1,j)-DG(i-1,j-1)+DG(i+1,j-1));
           %le module
           res(i,j)=sqrt(double(x^2+y^2)).*255; 
           if res(i,j)<25
               res(i,j)=0;
           else
               res(i,j)=255;
           end
        end
    end
end