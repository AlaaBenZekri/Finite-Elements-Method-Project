function [X] = mailleHerm(nh,L)
  X = ones(nh+1,1);
  for i=1:nh+1
    X(i) = (L/2)*(1-cos((i-1)*pi/nh));
  endfor
endfunction