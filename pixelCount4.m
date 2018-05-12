function weights = pixelCount4(A)
    weights = [0 0 0 0];

    d2 = abs(A(2, 3) - A(2, 2));
    d3 = abs(A(1, 3) - A(2, 2));
    d4 = abs(A(1, 2) - A(2, 2));
    d5 = abs(A(1, 1) - A(2, 2));
    d6 = abs(A(2, 1) - A(2, 2));
    d7 = abs(A(3, 1) - A(2, 2));
    d8 = abs(A(3, 2) - A(2, 2));
    d9 = abs(A(3, 3) - A(2, 2));

    D1 = d3 + d4 + d5 + d7 + d8 + d9; %0
    D2 = d2 + d3 + d4 + d6 + d7 + d8; %45
    D3 = d5 + d6 + d7 + d2 + d3 + d9; %90
    D4 = d4 + d5 +d6 + d2 + d8 + d9; %135
    
    D = D1 + D2 + D3 + D4;
    
     if isequal(D, 0)
        weights = [0 0 0 0];
    else
        weights(1) = double(D1) / double(D); %0
        weights(2) = double(D2) / double(D); %45
        weights(3) = double(D3) / double(D); %90
        weights(4) = double(D4) / double(D); %135
     end
end