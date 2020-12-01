function test(g)

     %Zoom
     f1=imzum(g);
     figure,imshow(g);
     title('Resmin ilk hali');
     figure,imshow(f1);
     title('Zoomlamadan sonra');
     
     %Nicemleme
     f2=imnic8(g);
     figure,imshow(f2);
     title('8-düzey nicemleme iþleminden  sonra');
     
     %Filtreleme
     f3=imort(g);
     figure,imshow(f3);
     title('Filtreleme iþleminden sonra');
     
end

