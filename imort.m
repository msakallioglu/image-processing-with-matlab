function c = imort(im)
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

imc = uint32(imc);
temp1 = zeros(h,h);                           
c = uint32(temp1);

for i=1:v
    for j=1:h
        if j>15
            ls=j-15;
        else
            ls=1;
        end
        if j+15<=h
            rs=j+15;
        else
            rs=h;
        end
        if i>15
           ts=i-15;
        else
            ts=1;
        end
        if i+15<=v
           bs=i+15;
        else
           bs=v;
        end
        %f=imc(bs:ts,ls:rs);
        tv=rs-ls+1;
        th=bs-ts+1;
        temp1 = zeros(th,tv);                           
        f = uint32(temp1);
        k=1;
        m=1;
        for q=ts:bs
            for w=ls:rs
                f(k,m)=imc(q,w);
                m=m+1;
            end
            k=k+1;
            m=1;
        end
       c(i,j)=sum(sum(f))/(size(f,1)*size(f,2));        
    end
end
c = uint8(c);
disp('The filtering process is complete.');
return;
