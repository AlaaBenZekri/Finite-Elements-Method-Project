function [K] = matK(nh,L,E,I,type)
  K = zeros(2*nh+2);
  if (type == 1)
    X = mailleReg(nh,L);
  else
    X = mailleHerm(nh,L);
  endif
  for i=1:nh
    K(2*i-1:2*i+2,2*i-1:2*i+2) = K(2*i-1:2*i+2,2*i-1:2*i+2) + Kele(X(i),X(i+1),E,I);
  endfor
endfunction