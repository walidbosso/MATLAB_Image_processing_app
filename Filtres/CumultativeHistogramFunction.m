function result= CumultativeHistogramFunction(histogram)
    cumultative=zeros(1,256);
    cumultative(1)=histogram(1);
    for i=2:256
        cumultative(i)=cumultative(i-1)+histogram(i);
    end
    result = cumultative ;
end