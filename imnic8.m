function g = imnic8(im)
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
[h,v]=size(imc);


temp = randn(h,v);                           
g = uint8(temp);

for i=1:h
    for j=1:v
        if(imc(i,j)>=0 && imc(i,j)<=31)
            g(i,j)=16;
        elseif(imc(i,j)>=32 && imc(i,j)<=63)
            g(i,j)=48;
        elseif(imc(i,j)>=64 && imc(i,j)<=95)
            g(i,j)=80;
        elseif(imc(i,j)>=96 && imc(i,j)<=127)
            g(i,j)=112;
        elseif(imc(i,j)>=128 && imc(i,j)<=159)
            g(i,j)=144;
        elseif(imc(i,j)>=160 && imc(i,j)<=191)
            g(i,j)=176;
        elseif(imc(i,j)>=192 && imc(i,j)<=223)
            g(i,j)=208;
        elseif(imc(i,j)>=224 && imc(i,j)<=255)
            g(i,j)=240;
        end
    end  
end
disp('8 level quantization process completed.');
return;
end

