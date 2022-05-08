function [f] = vecf(nh,L,q,type)
  f = zeros(2*nh+2,1);
  if (type == 1)
    X = mailleReg(nh,L);
  else
    X = mailleHerm(nh,L);
  endif
  for i=1:nh
    f(2*i-1:2*i+2) = f(2*i-1:2*i+2) + fele(X(i),X(i+1),q);
  endfor
endfunction