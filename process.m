function E = process(I, g)
  Ed1 = imdilate(imopen(I, g), g) - imclose(imopen(I, g), g);
  Ee1 = imopen(imclose(I, g), g) - imerode(imclose(I, g), g);
  Ede = imdilate(imopen(I, g), g) - imerode(imclose(I, g), g);
  
  E = Ede + min(Ed1, Ee1);
end