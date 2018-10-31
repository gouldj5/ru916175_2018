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

%% Problem 2
clc
%a)
f_m = 15; %kHz
beta = 2;
B = f_m;
%Find the transmission bandwidth by using Carson�s rule
B_T = 2 *(beta + 1)*B;
fprintf('Transmission Bandwidth  = %f kHz',B_T)

%b)

%?????

%% Problem 3
f_1 = 1; %kHz
w_1 = 2 * pi * f_1;
f_c = 100; %MHz
w_c = 2 * pi * f_c;

RF = 500*cos(w_c * t + 20 *cos(w_1)*t);
plot(t, RF)

D = 100; % rad/ V

%a) 
mp_t = (20 / D)*cos(w_1*t)

plot(t,mp_t)

%b)

%c)