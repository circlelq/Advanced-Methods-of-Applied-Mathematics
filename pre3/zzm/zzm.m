A=[-2,-2,-1;-3,-1,-1;1,0,-4];
B=[-1,0;0,-1;-1,-1];
Q=[-2,1,-2;1,-2,-4;-2,-4,-2];
R=eye(2);X=sdpvar(3);

F=set([A'*X+X*A+Q,X*B;B'*X,-R]<0)+set(X>0);
sol=solvesdp(F);X=double(X);

% 
% T=inv(R);
% F = [A'*X+X*A+X*B*T*B'*X+Q < 0, 0<X, uncertain(X)];
%  sol = optimize(F,trace(X))




