function test(g)

     %Zoom
     f1=imzum(g);
     figure,imshow(g);
     title('First Picture');
     figure,imshow(f1);
     title('After zoom');
     
     %quantization
     f2=imnic8(g);
     figure,imshow(f2);
     title('After 8 levels quantization');
     
     %Filtering
     f3=imort(g);
     figure,imshow(f3);
     title('After filtering');
     
end

