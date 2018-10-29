%% RADAR MIDTERM - Joshua Gould
%%
clc
f = 5; %GHz (C-Band - vertical polarization)
PKP = 5; %kW
CPA = 1.00; %meters
NoiseFigure = 3;
TotalSystemLosses = 10; %dB
Dutyf = .05; %
DwellL = 1.0; %ms
B = 1; %MHz.

%% SNR at 20km
clc
Ar = pi*(0.5)^2; 
c = 299792458;
WL = (c/5000000000); %wavelength lamda
R_g = (Ar*4*pi) / (WL^2);
R_g_db = 10*log10(R_g);
SNR = 7.2724;
fprintf('The SNR at 20km = %f db. ', SNR); 
fprintf('\nThe SNR is NOT detectable as %f is less than 15.', SNR);
%% CNR at 20km
clc
D = 1.00; %diameter
PKP = 10*log10(5000); %peak power

Tpross = 10* log10(.001); %processing time, ms
Gt = 34.38;
Gr = 34.38;
DF = 10*log10(0.05);
WL = (c/5000000000); %wavelength lamda
WLdb = 10*log10(90000 / (5000)^2);
pi4 = 10 * log10(64*pi*pi*pi);
Bwidth = WL/D; %beamwidth
PulseWidth = 1 / (B*1000000); 
km = 40*log10(20000); %m
Sstate = 3; %sea state
AngleG = 0.125; %grazing angle
L = 1 / B;
Pol = 'V';
NRL = NRL_SigmaSea(f,Sstate,'V',AngleG);
WCC = 20 * 1000 * Bwidth; %Width of clutter cell, m
RCC = PulseWidth * (1.5*(10)^8);%Range of clutter cell, m =pulsewidth x 1.5E8 m/s
CLUTA = WCC * RCC; %Clutter Area
RCSdb = 10* log10(CLUTA * 10^(NRL / 10));
RCS = CLUTA * 10^(NRL / 10);
k = 228.60; % Boltzman Constant
T0 = 24.62; %temp
Nfig = 3;
Eloss = 10;
CNR = Gt+ Gr + PKP + RCSdb + DF + k - pi4 + Tpross - T0 + WLdb - Nfig - Eloss - km;
fprintf('The CNR at 20km = %f db. ', CNR); 
fprintf('\nThe Clutter Cross Sectional area = %f dbm^2. ', RCS);
%% Generate S/(C+N) at 20 km.
clc
SCPN = 1/(1/(SNR) + 1/(CNR));
fprintf('The S/(C+N) at 20km = %f db. ', SCPN);
fprintf('\nThe target is NOT detectable as %f is less than 15 db.', SCPN);
%% Mean sea clutter reflectivity at S/(C+N) of exactly 15 dB?
clc;
NRLn = -90.931063; 
RCSn = 10*log10(CLUTA * 10^(NRLn / 10));
CNRn = Gt + Gr + PKP + RCSn + DF + k - pi4 + Tpross - T0 + WLdb - Nfig - Eloss - km;
fprintf('Mean sea clutter reflectivity = %f dbm^2 / m^2',NRLn);
fprintf('\nNew CNR = %f db',CNRn); 
SCPNn = 1/(1/(SNR) + 1/(CNRn));
fprintf('\nNew S/(C+N) = %f db',SCPNn);






