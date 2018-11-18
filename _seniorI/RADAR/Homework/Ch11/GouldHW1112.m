%% Joshua Gould - Homework Chapter 11 & 12

%% Problem 11.3
% For a radar with an RF center frequency of 9.6 GHz and a desired first IF of 2.4 GHz. What is
% the LO frequency if it is below the RF? 
clc
%For a 2.4 GHz IF center frequency, the RF frequency (F1) = 9.6 GHz and the LO frequency (F2) = 7.2 GHz
LO = 9.6 - 2.4;
fprintf ('LO Frequency = %f GHz',LO)

% Determine if any of the intermodulation components fall into the IF for n = 1 to 3 and m = 1 to 4
F1 = 9.6;
F2 = 7.2;
N1M1 = F1-F2;  %=2.4GHz
N1M2 = F1- 2*F2;
N2M1 = 2*F1 - F2;
N2M2 = 2*F1 - 2*F2;
N2M3 = 2*F1 - 3*F2; % =-2.4 GHZ
N3M1 = 3*F1 - F2;
N3M2 = 3*F1 - 2*F2;
N3M3 = 3*F1 - 3*F2;
N3M4 = 3*F1 - 4*F2;

fprintf ('\n at n = 1, m = 1 and at n = 2, m = 3.')

%% Problem 12.5a
% For the case described in problem 4:
% a. What is the surface area of a clutter cell at the true range of the target?
clc
c = 3.0 * 10^8; %m/s
%pulse length of 1 microsecond
PL = 1  ; %us
%PRF of 8 kHz
PRF = 8; %kHz
%antenna azimuth beamwidth of 3 degrees.
AB = 3; %degrees
ABr = AB/180;
%target at a distance of 60.0 km
d = 60.0; %km
%system is range-ambiguous

%Width of clutter cell, m
W = ABr * (d*1000);
%unambiguous range 
Rua = c / (2*PRF);
%Range of the clutter cell
Rcc = (PL * .000001) * c/2;
%Clutter area 
Ac = W * Rcc;
%Clutter Surface Area 
SA = 3 * Ac;

fprintf('Surface area of the clutter cell = %f m^2',SA)



%% Problem 12.5b
% What is the area of a clutter cell at the apparent range to the target?
Rapp = c*(PRF/1)*(PL/2);
Rcs = (PL * .000001) * Rapp;
Acc = W * Rcs;

fprintf ('\n Area of the clutter cell at apparent range = %f m^2',Accl)