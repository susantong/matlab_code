I = imread('C:/Users/Administrator/Desktop/2.jpg');
I = rgb2gray(I);
% S = strel('rectangle', [3 3]);
S = strel('square', 3);

% I = imnoise(I,'gaussian',0.02);     %�����˹���� 
I = imnoise(I,'salt & pepper',0.02);     %���뽷������

% E = imclose(I, S);
% F = imclose(imopen(E, S), S);

F = process(I, S);

edge = edgeChangePlus(F); 

figure, imshow(edge);

% otusMethod(edge);