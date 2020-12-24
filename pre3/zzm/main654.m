
A=[-2,-3,-1;-3,-1,-1;1,0,-4];
B=[-1,0;0,-1;-1,-1];
Q=[-2,1,-2;1,-2,-4;-2,-4,-2];
R=eye(2);

setlmis([]);
X=lmivar(1,[3 1]);
lmiterm([1 1 1 X],A',1,'s');
lmiterm([1 1 1 0],Q);
lmiterm([1 1 2 X],1,B);
lmiterm([1 2 2 0],-1);
lmiterm([-2,1,1,X],1,1);
G=getlmis;
[tmin b]=feasp(G);X=dec2mat(G,b,X);

% X=sdpvar(3);
% F = [ 0 <= X, A'*X+X*A+X*B*inv(R)*B'*X+Q <= 0];
% 
% sol = solvesdp(F,[1 1 1 1 1]*X*[1 1 1 1 1]');X=double(X);
% sol=solvesdp(F);

% ([A'*X+X*A+Q,X*B;B'*X,-R]<=0)
% T=inv(R);

% 
% F=set([A'*X+X*A+Q,X*B;B'*X,-R]<0)+set(X>0);  sol = optimize(F,trace(X))