function res= hCumule(histo)
cu=zeros(1,256);
cu(1)=histo(1);
for i=2:256
    cu(i)=cu(i-1)+histo(i);
end
res = cu ;
end