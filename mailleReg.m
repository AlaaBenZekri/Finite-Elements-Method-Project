function [X] = mailleReg(nh,L)
  X = ones(nh+1,1);
  for i=1:nh+1
    X(i) = (i-1)*L/nh;
  endfor
endfunction