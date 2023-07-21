function result= Gaussian(im)
    BG=im;
    BB=im;
    [L, H] = size(BB) ;
    sigma1 = 100.3;
    divi1 = double(1/(2*pi*(sigma1^2)));
    AU1 = zeros(3,3);
    for i=-1:1
        for j=-1:1
            AU1(i+2,j+2)= exp(-((i^2 + j^2)/(2*(sigma1^2))))  ;
        end
    end
    AU1 = AU1.*divi1;
    AU1=AU1./(sum(sum(AU1)));
    K1=BB;
    for i=2:L-1
        for j=2:H-1
            K1(i,j) = 0;
            for t=-1:1
                for s=-1:1
                    K1(i,j)=K1(i,j) + BB(i+t,j+s)* AU1(t+2,s+2);
                end
            end
        end
    end
    result=K1;
end