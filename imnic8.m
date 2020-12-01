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

%imcrop fonksiyonu kullanýlarak resim kýrpma
% [i,j]=size(im);
% if(j>i)%sutun satýrdan büyükse
%     d=j-i;
%     imc=imcrop(im,[1,1,(j-d-1),(j-d-1)]);
%     [h,v]=size(imc);
% elseif(i>j)%satýr sutundan büyükse
%     d=i-j;
%     imc=imcrop(im,[1,1,(i-d-1),(i-d-1)]);
%     [h,v]=size(imc);
% else
%     imc=im;
%     [h,v]=size(imc);
% end

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
disp('8-düzey nicemleme iþlemi tamamlandý.');
return;
end

