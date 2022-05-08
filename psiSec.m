function [psiSec] = psiSec(x,he)
  psiSec(1,:) = -6/(he ** 2) + 12 * x/(he ** 3);
  psiSec(2,:) = -4/he + 6*x/(he ** 2);
  psiSec(3,:) = 6/(he ** 2) - 12*x/(he ** 3);
  psiSec(4,:) = -2/he + 6*x/(he**2);
endfunction
