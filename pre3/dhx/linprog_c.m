function [x,f,flag,cc]=linprog_c(C,A,B,Aeq,Beq,xm,xM)
[p,m] = size(C);
c = 0;
for i = 1:p, [x,f] = linprog(C(i,:),A,B,Aeq,Beq,xm,xM);
    c = c-C(i,:)/f;
end
[x,f,flag,cc] = linprog(c,A,B,Aeq,Beq,xm,xM);