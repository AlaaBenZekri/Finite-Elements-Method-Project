function [psi] = psi(x,he)  psi(1,:) = 1-3*(x.^2)/(he**2)+2*(x.^3)/(he**3);  psi(2,:) = x-2*(x.^2)/he+(x.^3)/(he**2);  psi(3,:) = 3*(x.^2)/(he**2)-2*(x.^3)/(he**3);  psi(4,:) = -(x.^2)/he+(x.^3)/(he**2);endfunction 