function findBestParams()
  C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
  SIGMA = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

  for i = 1:size(C, 2)
    for j = 1:size(C, 2)
      c = C(i);
      sigma = SIGMA(j);
    endfor
  endfor
end
