function result= Dilatation(im)
    st1=[ 1 1 1 1 1
          1 1 1 1 1
          1 1 1 1 1 
          1 1 1 1 1
          1 1 1 1 1];
    result=imdilate(im,st1);
end