function [Mfz] = vecM(x,L,F0,q0)
  Mfz = F0*(L-x) + (q0*L^2/6)*(2-3*x/L+x.^3/L^3);
endfunction