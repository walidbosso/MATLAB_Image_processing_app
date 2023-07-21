function result= Median(img)
    BG=img;
    result=BG;
    [L, H]=size(BG);
    for i=2:L-1
        for j=2:H-1
            T1=[BG(i-1,j-1),BG(i,j-1),BG(i,j),BG(i-1,j),BG(i+1,j-1),BG(i+1,j),BG(i+1,j+1),BG(i-1,j+1),BG(i,j+1)];
            TG=sort(T1);
            result(i,j)=TG(5);
        end
    end
end