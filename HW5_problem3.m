%% Problem 3

%% Part A
clear; clc; close all;
t = 0:.001:5;
omega = pi;
k = 5001;
h = 0.4;
t_k=h*(k-1)*.4;
y=sin(omega.*t);
%essentially continuous sin wave
figure(1);
ts=t(1:t_k:end); 
ys=y(1:t_k:end); 
hold on;
plot(t,y,'k',ts,ys,'kx');
%stair-step fuction
for i=1:size(t,2) 
    y_zoh(i)=y(t_k*floor((i-1)/t_k)+1);
end
plot(t,y_zoh,'r-');
hold off;

%% Part B
figure(2);
hold on;
plot(t,y,'k',ts,ys,'kx');
%stair-step fuction
for i=1:size(t,2) 
    v = floor((i-1)/t_k)+1;
    if v == 1
        y_foh(i)=0;
    else
        y_foh(i)=ys(v)+(t(i)-ts(v))*((ys(v)-ys(v-1))/h);
    end
end
plot(t,y_foh,'r-');
hold off;

%% Part C
% Lagrange Interpolation (7.2a/b) 
% unique quadratic (t_(k-2),y_(k-2))
figure(3);
plot(t,y,'k',LineWidth=3);
hold on;
n=length(ts); m=length(t); 
for j=1:m 
    y_soh(j)=0; 
    for k=1:n
        L=1; 
        for i=1:n 
               if i~=k 
                   L=L*(t(j)-ts(i))/(ts(k)-ts(i)); 
               end
        end
        y_soh(j)=y_soh(j)+ys(k)*L;
    end
end
plot(ts,ys,'kx',t,y_soh,'r-.',LineWidth=2);





 




