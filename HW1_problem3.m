clear; syms L1 L2 L3 L4 L5 L6 L7 L8 L9 x y z u
eqn1= L1*x+L2*y==0;
eqn2= L3*x+L4*y+L5*z==0;
eqn3= L6*x+L7*y+L8*z==L9*u;
sol=solve(eqn1,eqn2,eqn3,x,y,z); G=sol.y/u;

syms sig b xbar ybar zbar
G=subs(sol.y/u,{L1,L2,L3,L4,L5,L6,L7,L8,L9},...
    {-sig,sig,-zbar,-1,-xbar,ybar,xbar,-b,b})