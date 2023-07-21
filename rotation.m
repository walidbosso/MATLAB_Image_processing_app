function rot = rotation(image,ang)
if size(image,3)==3
    [l,c,h] = size(image);
    diam = ceil(sqrt(l^2+c^2));
    imRotationee = uint8(zeros(diam,diam,3));
    for k=1:h
       for i=1:diam
          for j=1:diam
              a = round((l/2) + (i-(diam/2))*cos(ang) - (j-(diam/2))*sin(ang));
              b = round((c/2) + (j-(diam/2))*cos(ang) + (i-(diam/2))*sin(ang));
              if ( a>0 && a<=l && b>0  && b<=c )
                 imRotationee(i,j,k)=image(a,b,k);
              else
                 imRotationee(i,j,k)=0;
              end
          end
       end
    end
else
    [l,c]=size(image);
    diam = ceil(sqrt(l^2+c^2));
    imRotationee = uint8(zeros(diam,diam)); 
    for i=1:diam
        for j=1:diam
           a = round((l/2) + (i-(diam/2))*cos(ang) - (j-(diam/2))*sin(ang));
           b = round((c/2) + (j-(diam/2))*cos(ang) + (i-(diam/2))*sin(ang));
           if ( a>0 && a<=l && b>0  && b<=c )
               imRotationee(i,j) = image(a,b);
           else
               imRotationee(i,j)=0;
           end
        end
    end   
end
rot = imRotationee;
end
