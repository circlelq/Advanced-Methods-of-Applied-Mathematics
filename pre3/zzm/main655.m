

x=sdpvar(5,1); A=[0 2 1 4 2;3 4 5 -1 -1]; B=[54;66];
xm=[0,2,3,0.5,2]';
F= [A*x <= B, xm<=x];
sol=solvesdp(F,-[6 3 5 2 9]*x); x=double(x);
Ans=-[6 3 5 2 9]*x;

