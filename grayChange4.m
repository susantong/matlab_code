function weight = grayChange4(index, F)
   [rows cols] = size(F);
   cnt = 0;
   weights = [0 0 0 0];
   count = [0 0 0 0];
   
    for i=1:rows-2
        for j=1:cols-2
            I = F(i:i+2, j:j+2);
            
            count = pixelCount4(I);

            cnt = cnt + 1;
            
            weights = weights + count;
        end
    end
    
    weight = double(weights(index))/double(cnt);
end
