function imz = imzum(im)

[r,c]=size(im);
if(r~=c)
    if(r>c)
        imc=im(1:c,1:c);
    elseif(c>r)
        imc=im(1:r,1:r);
    end 
else
    imc=im;
end

[r,c] = size(imc);
nr = r*1.25;
nc = c*1.25;
imz = uint8(zeros(nr, nc));
 
for i= 0:nr-1
  for j= 0:nc-1
    x = floor(j/1.25);
    y = floor(i/1.25);
    imz(i+1, j+1) = imc(y+1, x+1);
  end
end
disp('Image Enlargement Completed.');
    return
end