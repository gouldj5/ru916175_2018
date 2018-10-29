%% Problem 2.1
Pt = 100000; %kW Transmitter
fq = 9400; %MHz Frequency
Gt = 32; %db Antenna Transmit
Gr = 32; %db Antenna Recieved
RCS = 0; %dBsm Target RadarCrossSection
RCS2 = 1;
RNGE = 50; %km Target Range
L = 1; 
ldb = ((10^Gt) / 10);
Lm = ((10^L) / 10);
Pr = ((10*log10(Pt))+ Gt + Gr * 1);
Freqz = abs((10*log10(90000/(fq*fq))));
pi4 = (10*log10((4*pi)^3));
rng = (40*log10(RNGE*1000));
Prn = Freqz + pi4 + rng;
Prm = Pr - Prn
%% Problem 2.2
k = (1.38 * 10^(-23)); %watt-s / K
T0 = 290; %K Standard Temperature
F = 2.7; %db noise figure
Fm = 10^(F/10);
Ts = T0*Fm; 
B = 1; %instaneous receiver in MHz

Pn = k*Ts*B;
Pnm = 10*log10(Pn)
%% Problem 2.6

Pt = [25000, 250000, 250000, 250000]; %kW Transmitter
Ptm = 10*log10(Pt);
fq = [9400, 9400, 2800, 9400]; %MHz Frequency
fqm = abs(10*log10(90000./(fq.^2)));
Gt = [36, 31, 31, 36]; %db Antenna Transmit
Gr = [36, 31, 31, 36]; %db Antenna Recieved
k = (1.38 * 10^(-23)); %watt-s / K
T0 = 290; %K Standard Temperature
T0m = 10*log10(T0);
F = [3.2, 3.2, 2.7, 2.7]; %db noise figure
Fm = 10.^(F./10);
Pie = 10*log((4*pi)^3);
Ts = T0*Fm; 
B = 10; %instaneous receiver in MHz
RCS = 0; %dBsm Target RadarCrossSection
RCS2 = 1;
RNGE = 36000; %km Target Range
RNGEm = 40*log10(RNGE);
SNR2 = Ptm + Gt + Gr;
SNR1 = fqm + Pie + T0m + F + RNGEm;
SNRE1 = SNR2 - SNR1 - 2.1;
SNRE2 = SNR2 - SNR1 - 4.3;
%% Problem 2.7

RNGEL = ((RNGE)/(1000)) * 0.12; 
SNRE3 = SNR2 - SNR1 - 2.1 - RNGEL;
SNRE4 = SNR2 - SNR1 - 4.3 - RNGEL;
