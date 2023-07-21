function result= Erosion(im)
    st1=[1 1 1;1 1 1 ;1 1 1];
    result=imerode(im,st1);
end