function edge = edgeChangePlus(F)
    S1 = [0 0 0
          1 1 1
          0 0 0]; %0
    S2 = [0 0 0 0 0
          1 0 0 0 0
          0 0 1 0 0
          0 0 0 0 1
          0 0 0 0 0]; %157.5
    S3 = [1 0 0
          0 1 0
          0 0 1]; %135
    S4 = [0 1 0 0 0
          0 0 0 0 0
          0 0 1 0 0
          0 0 0 0 0
          0 0 0 1 0]; %112.5
    S5 = [0 1 0
          0 1 0
          0 1 0]; %90
    S6 = [0 0 0 1 0
          0 0 0 0 0
          0 0 1 0 0
          0 0 0 0 0
          0 1 0 0 0]; %67.5
    S7 = [0 0 1
          0 1 0
          1 0 0]; %45 
    S8 = [0 0 0 0 0
          0 0 0 0 1
          0 0 1 0 0
          1 0 0 0 0
          0 0 0 0 0]; %22.5
  
   edge1 = imdilate(F, S1) - imerode(F, S1);
   edge2 = imdilate(F, S2) - imerode(F, S2);
   edge3 = imdilate(F, S3) - imerode(F, S3);
   edge4 = imdilate(F, S4) - imerode(F, S4);
   edge5 = imdilate(F, S5) - imerode(F, S5);
   edge6 = imdilate(F, S6) - imerode(F, S6);
   edge7 = imdilate(F, S7) - imerode(F, S7);
   edge8 = imdilate(F, S8) - imerode(F, S8);
   
   weight1 = grayChange4(1, F);
%    fprintf('%f\n', weight1);
   weight2 = grayChange8(2, F);
%    fprintf('%f\n', weight2);
   weight3 = grayChange4(4, F);
%    fprintf('%f\n', weight3);
   weight4 = grayChange8(4, F);
%    fprintf('%f\n', weight4);
   weight5 = grayChange4(3, F);
%    fprintf('%f\n', weight5);
   weight6 = grayChange8(6, F);
%    fprintf('%f\n', weight6);
   weight7 = grayChange4(2, F);
%    fprintf('%f\n', weight7);
   weight8 = grayChange8(8, F);
%    fprintf('%f\n', weight8);
   
   edge = edge1 * weight1 + edge2 * weight2 + edge3 * weight3 + edge4 * weight4 + edge5 * weight5
   + edge6 * weight6 + edge7 * weight7 + edge8 * weight8;
end