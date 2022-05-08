function [Q] = initQ(nh,F0)
  Q = zeros(2*nh+2,1);
  Q(2*nh+1) = F0;
endfunction