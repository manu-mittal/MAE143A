% script 2024 midterm 1 143A Problem 1d

clear
Fap1=RR_tf([1,-1],[1,1]);
figure(1), RR_bode(Fap1)
figure(2), RR_step(Fap1)

