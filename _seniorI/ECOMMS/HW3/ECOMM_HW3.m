%% ECOMMS HW 3 
%% Plot m(t) and the corresponding PM signal Sp(t) using Matlab, where Dp=?
t = 0:0.1:10;
f_c = 1; %Hz
f_m = f_c / 4;
D_p = pi;
mt = cos(2*pi*f_m*t);
Sp = cos(2*pi*f_c + D_p * mt);
plot(t,Sp)
%%  Plot m(t) and the corresponding FM signal Sf (t) using Matlab, where Df = ?.
D_f = pi;
O_t = (1/(2*f_m))*sin(2*pi*f_m*t);
Sf = cos(2*pi*f_c*t + O_t);
plot(t,Sf)