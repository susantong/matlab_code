function weight = grayChange8(index, F)
   [rows cols] = size(F);
   cnt = 0;
   weights = [0 0 0 0 0 0 0 0];
   count = [0 0 0 0 0 0 0 0];
   
    for i=1:rows-4
        for j=1:cols-4
            I = F(i:i+4, j:j+4);
    
            count = pixelCount(I);

            cnt = cnt + 1;
            
            weights = weights + count;
        end
    end
    
    weight = double(weights(index))/double(cnt);
end
