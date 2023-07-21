function resultat=luminanceMoins(a,value)
b=uint8(ones(size(a,1),size(a,2)));
a=a-value*b;
resultat=a;
end