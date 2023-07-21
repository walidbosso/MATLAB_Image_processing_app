function res= Robert(im)
    G1=im2gray(im);
    DG=im2double(G1);
    [l ,c]=size(DG);
    res=DG;
    for i=1:l-1
        for j=1:c-1
           %derive horizontale
           x=DG(i+1,j+1)-DG(i,j);
           %derive verticale
           y=DG(i,j+1)-DG(i+1,j);
           %le module
           res(i,j)=sqrt(double(x^2+y^2));   
        end
    end
end
