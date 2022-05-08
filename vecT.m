function [Ty] = vecT(x,L,F0,q0)
  Ty = F0 + (q0*L/2)*(1-x.^2/L^2);
endfunction