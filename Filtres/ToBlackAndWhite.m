function result= ToBlackAndWhite(img)
    
%     if ndims(img) == 2
%         B=zeros(size(img,1),size(img,2));
%     else
%         B=zeros(size(img,1),size(img,2),size(img,3));
%     end
    B=zeros(size(img,1),size(img,2),size(img,3));
    for l=1:size(img,1)
        for c=1:size(img,2)
            if(sum(img(l,c,:))>0)
                B(l,c)=1;
            end
        end
    end
    B=logical(B);
    result=B;
end
