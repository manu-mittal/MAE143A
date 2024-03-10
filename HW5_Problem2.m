%% Problem 2

%% Part A

%% Part B
%F1(z)*F2(z)
z = sym('z');
F1=(z^3+3*z^2+3*z+1)/(1221*z^3-3177*z^2+2783*z-819);
F2=(10*z-10)/(11*z-9);
Fz = F1.*F2;