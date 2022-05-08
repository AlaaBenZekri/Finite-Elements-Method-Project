function [R] = resolution(nh,L,E,I,q,F0,type)
  K = matK(nh,L,E,I,type);
  f = vecf(nh,L,q,type);
  U = initU(nh);
  Q = initQ(nh,F0);
  U(3:2*nh+2)=K(3:2*nh+2,3:2*nh+2)\(f(3:2*nh+2).+Q(3:2*nh+2));
  if (type == 1)
    X = mailleReg(nh,L);
  else
    X = mailleHerm(nh,L);
  endif
  k=1;
  for i=1:nh
    Qe = Kele(X(i),X(i+1),E,I)*U(2*i-1:2*i+2)-fele(X(i),X(i+1),q)
    Ty(k) = -Qe(1);
    Mfz(k) = -Qe(2);
    k += 1;
  endfor
  Qe = Kele(X(nh),X(nh+1),E,I)*U(2*nh-1:2*nh+2)-fele(X(nh),X(nh+1),q)
  Ty(k) = Qe(3);
  Mfz(k) = Qe(4);
  R = [U;Ty';Mfz'];
endfunction