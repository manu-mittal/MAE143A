% Problem 2c
clear; close all;
syms wc
wc = 1;
F2a=RR_tf([wc^2],[1,0.77,wc^2]);
F2b=RR_tf([wc^2],[1,1.85,wc^2]);
F4=F2a*F2b;
figure(1), RR_bode(F2a)
figure(2), RR_bode(F2b)
figure(3), RR_bode(F4)
figure(4), RR_step(F4)