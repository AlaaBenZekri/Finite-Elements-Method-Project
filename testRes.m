%%%Pour n=10:
n=60

L = 1.;
E = 200*1e9;
I = 29*1e-6;
F0 = 100;
q0 = 2.4*1e3;


%%%Pour la solution exacte
X = linspace(0,1,100);
vtheo = vecv(X,L,E,I,F0,q0)
Tytheo = vecT(X,L,F0,q0);
Mfztheo = vecM(X,L,F0,q0);
%%Pour un maillage régulier:

K1 = matK(n,L,E,I,1)
q = @(x) q0*x/L;
f1 = vecf(n,L,q,1)
U0 = initU(n);
Q0 = initQ(n,F0);
R1 = resolution(n,L,E,I,q,F0,1)
k1 = size(R1)(1);
U1 = R1(1:k1/2)
Ty1 = R1(k1/2+1:3*k1/4)
Mfz1 = R1(3*k1/4+1:k1)

%%subplot(2,2,1);
X1 = mailleReg(n,1);
vanal1 = [];

for i=1:k1/2
  if (mod(i,2))
    vanal1 = [vanal1;U1(i)];
  endif
endfor

K2 = matK(n,L,E,I,2)
f2 = vecf(n,L,q,2)

R2 = resolution(n,L,E,I,q,F0,2)
k2 = size(R2)(1);
U2 = R2(1:k2/2)
Ty2 = R2(k2/2+1:3*k2/4)
Mfz2 = R2(3*k2/4+1:k2)
X2 = mailleHerm(n,1);
vanal2 = [];

for i=1:k2/2
  if (mod(i,2))
    vanal2 = [vanal2;U2(i)];
  endif
endfor
subplot(2,2,1)
plot(X1,vanal1,'--',X2,vanal2,'--',X,vtheo)
legend('Analytique Maillage 1','Analytique Maillage 2','Théorique')
title('Déplacement')
subplot(2,2,2)
plot(X1,Ty1,'--',X2,Ty2,'--',X,Tytheo)
legend('Analytique Maillage 1','Analytique Maillage 2','Théorique')
title('Effort Tranchant')
subplot(2,2,3)
plot(X1,Mfz1,'--',X2,Mfz2,'--',X,Mfztheo)
legend('Analytique Maillage 1','Analytique Maillage 2','Théorique')
title('Moment Fléchissant')