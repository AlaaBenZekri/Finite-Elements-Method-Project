function [v]=vecv(x,L,E,I,F0,q0)
  v =(F0/(6*E*I)*x.^2).*(3*L-x)+q0*L^4/(120*E*I)*(20*x.^2/L^2-10*x.^3/L^3+x.^5/L^5);
endfunction