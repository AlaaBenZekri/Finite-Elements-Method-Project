function [fe] = fele(x1,x2,q)
  fe = zeros(4,1);
  he = x2-x1;
  X = 0:he/100:he;
  Y = psi(X,he);
  qv = q(X+x1);
  for i=1:4
    fe(i) = trapz(X,Y(i,:).*qv);
  endfor
endfunction