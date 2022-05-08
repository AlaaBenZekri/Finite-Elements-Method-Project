function [U] = initU(nh)
  U = zeros(2*nh+2,1);
  U(2) = 0;
  U(1) = 0;
endfunction