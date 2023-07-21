function result= Medium(im)
    valeur=3;
    result=im;
    [l,c]=size(im);
    bloc=zeros(valeur,valeur);
    filtre=ones(valeur,valeur);
    som=sum(sum(filtre));
    debut=ceil(valeur/2);
    for i=debut:l-debut+1
        for j=debut:c-debut+1
            bloc=im(i-debut+1:i+debut-1,j-debut+1:j+debut-1);
            bloc = double(bloc);
            result(i,j)= sum(sum(filtre.*bloc))/som;
        end
    end
end