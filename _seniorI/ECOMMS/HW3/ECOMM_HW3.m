%% Homework 3 - Joshua Gould 
% Date - 11-01-2018


%% Problem 1a
t = 0:0.1:10;
fc = 1;
fm = 1/4;
mt = cos(2*pi*fm*t);
spt = cos(2*pi*fc+pi*mt);
subplot(2,1,1)
plot(t,mt)
xlabel('time (s)')
ylabel('m(t)')
subplot(2,1,2)
plot(t,spt);
xlabel('time (s)')
ylabel('S_p(t)')
%% Problem 1b
t = 0:0.1:10;
fc = 1;
fm = 1/4;
D_f = pi;
mt = cos(2*pi*fm*t);
Ot = (1/(2*fm))*sin(2*pi*fm*t);
sft = cos(2*pi*fc*t + Ot);
subplot(2,1,1)
plot(t,mt)
xlabel('time (s)')
ylabel('m(t)')
subplot(2,1,2)
plot(t,sft);
xlabel('time (s)')
ylabel('S_f(t)')

%% Problem 2a
clc
f_m = 15; %kHz
beta = 2;
B = f_m;
%Find the transmission bandwidth by using Carson’s rule
B_T = 2 *(beta + 1)*B;
fprintf('Transmission Bandwidth  = %f kHz',B_T)

%% Problem 2b
clc
%%
% $$P_c = 1/2 A_c^2 \sum_{n=N}^{N} J_n \beta = 1/2 A_c^2 \sum_{n=3}^{3} J_n(2) $$
%%
% $$P_c = 1/2 [J_0(2)^2 + J_1(2)^2 + J_2(2)^2 + J_3(2)^2]$$
clc
Pc = 0.2927 + 0.1936 + 0.0132 + 0.00019;
fprintf('Pc = %f Ac^2',Pc)
%%
% 
% $$Pt = P_c / P \rightarrow P = A_c/2 = 5 $$
% 
clc
P = 0.5; %V
PercentP = (Pc / P)*100;
fprintf('\nPercent Power = %f %% of A_c ^2 /2 ',PercentP)


%% Problem 3a
f_1 = 1; %kHz
w_1 = 2 * pi * f_1;
f_c = 100; %MHz
w_c = 2 * pi * f_c;
t = 0:0.1:10;
D = 100; % rad/ V

RF = 500*cos(w_c * t + 20 *cos(w_1)*t);

mp_t = (20 / D)*cos(w_1*t);
spt = cos(2*pi*fc + D*mp_t);
V_p = 20/D;
clc
subplot(2,1,1)
plot(t,RF)
xlabel('time (s)')
ylabel('m(t)')
subplot(2,1,2)
plot(t,spt);
xlabel('time (s)')
ylabel('S_p(t)')

fprintf('PM = cos(2*pi*fc+D*mp_t)')
fprintf('\nPeak value = %f V',V_p)
fprintf('\nFrequency of mp(t) = %f kHz', 2*pi) 


%% Problem 3b
clc
D_f = 1 * 10^6;  % rad/(V?s)
w_1 = 2 * pi * 1000;

m_f_t = (-20*w_1*sin(w_1*t))/(D_f );
sft = cos(2*pi*fc*t + m_f_t);
%V_f_t = ;
mx = max(sft);
plot(t,sft)
fprintf('FM = cos(2*pi*fc*t + (-20*w_1*sin(w_1*t))/(D_f ))')
fprintf('\nFrequency = w1 = %f kHz',w_1)
fprintf('\nPeak value = %d',mx)

%% Problem 3c
clc
A = 500;
R_load = 50;%Ohm
PEP = (A^2) / (2*R_load);
P_avg = PEP;

fprintf('P_avg = PEP = %d W',round(PEP))

%% Problem 4a
%%
% $$ s(t)=A_C  cos[w_c t + D_f * int(m(\sigma)d\sigma) ] $$

A_c = 100; %V 
f_c= 420; %MHz
w_c = 2*pi*f_c;
%V_pp=(10 to 5)=15V
%25kHz = D_f/2? (15)= 
D_f = (25000*2*pi)/15;
fprintf('D_f = %d Hz/V',round(D_f))

%% Problem 4b
I = imread('pds.png');
imshow(I)
% where 
%%
% $$\frac{A_c^2}{8*D_f} = 0.119 $$
% 
%%
% $$ \Delta F = D_f V_p / 2 \pi = 25000.06$$
%%
% $$ f_c = 420 MHz $$
