function [Ke] = Kele(x1,x2,E,I)
  he = x2-x1;
  X = 0:he/100:he;
  Y = psiSec(X,he);
  for i=1:4
    for j=1:4
      Ke(i,j) = trapz(X,Y(i,:).*Y(j,:)*E*I);
    endfor
  endfor
endfunction

