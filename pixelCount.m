function weights = pixelCount(A)
    weights = [0 0 0 0 0 0 0 0];

    d2 = abs(A(3, 4) - A(3, 3));
    d3 = abs(A(2, 4) - A(3, 3));
    d4 = abs(A(2, 3) - A(3, 3));
    d5 = abs(A(2, 2) - A(3, 3));
    d6 = abs(A(3, 2) - A(3, 3));
    d7 = abs(A(4, 2) - A(3, 3));
    d8 = abs(A(4, 3) - A(3, 3));
    d9 = abs(A(4, 4) - A(3, 3));
    d10 = abs(A(4, 5) - A(3, 3));
    d11 = abs(A(3, 5) - A(3, 3));
    d12 = abs(A(2, 5) - A(3, 3));
    d13 = abs(A(1, 5) - A(3, 3));
    d14 = abs(A(1, 4) - A(3, 3));
    d15 = abs(A(1, 3) - A(3, 3));
    d16 = abs(A(1, 2) - A(3, 3));
    d17 = abs(A(1, 1) - A(3, 3));
    d18 = abs(A(2, 1) - A(3, 3));
    d19 = abs(A(3, 1) - A(3, 3));
    d20 = abs(A(4, 1) - A(3, 3));
    d21 = abs(A(5, 1) - A(3, 3));
    d22 = abs(A(5, 2) - A(3, 3));
    d23 = abs(A(5, 3) - A(3, 3));
    d24 = abs(A(5, 4) - A(3, 3));
    d25 = abs(A(5, 5) - A(3, 3));
    
    D1 = d13 + d14 + d15 + d16 + d17 + d21 + d22 + d23 + d24 + d25;
    D2 = d4 + d5 + d18 + d19 + d20 + d8 + d9 + d10 + d11 + d12;
    D3 = d15 + d16 + d17 + d18 + d19 + d10 + d11 + d23 + d24 + d25;
    D4 = d22 + d23 + d24 + d9 + d2 + d5 + d14 + d15 + d16 + d6;
    D5 = d17 + d18 + d19 + d20 + d21 + d10 + d11 + d12 + d13 + d25;
    D6 = d2 + d3 + d14 + d15 + d16 + d6 + d7 + d22 + d23 + d24;
    D7 = d11 + d12 + d13 + d14 + d15 + d19 + d20 + d21 + d22 + d23;
    D8 = d10 + d11 + d12 + d3 + d4 + d18 + d19 + d20 + d7 + d8;
    
    D = D1 + D2 + D3 + D4 + D5 + D6 + D7 + D8;
    if isequal(D, 0)
        weights = [0 0 0 0 0 0 0 0];
    else
        weights(1) = double(D1) / double(D); %0
        weights(2) = double(D2) / double(D); %157.5
        weights(3) = double(D3) / double(D); %135
        weights(4) = double(D4) / double(D); %112.5
        weights(5) = double(D5) / double(D); %90
        weights(6) = double(D6) / double(D); %67.5
        weights(7) = double(D7) / double(D); %45
        weights(8) = double(D8) / double(D); %22.5
    end
end