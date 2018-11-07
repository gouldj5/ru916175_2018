%% Homework Chapter 10 - Joshua Gould

%% Problem 10-13
%An X-band (? = 3 cm) T/R module uses a power amplifier that exhibits a power added
%efficiency on transmit of nominally 33% over a peak output power range from 0.1 W to 10 W
%at 20% transmit duty cycle. In the transmit mode the module also requires 250 mW of DC
%power to power the background control electronics. In the receive mode the module requires
%500 mW of DC power, including background control electronics. A radar is required to have
%a power-aperture-gain product of 80 dBWm2. Assume nominally 4,000 elements per square
%meter as an element density to satisfy scan volume requirements. Tabulate and plot the DC
%prime power required by the array for peak module powers from 0.1 W to 10 W and examine
%the results.

Lmda = .03;%m
Peff = .33; %efficiency on transmit of nominally 33% over a peak output power
Dt = .2; % 20% transmit duty cycle
Pback = 250; % mW of DC power to power the background control electronics
Prng = 0.1:0.1:10; %W
Pr = 500; %mW of DC power receive mode
PaP = 80; % dBWm2 power-aperture-gain product of 
E = 4000; %elements per square meter
Pav = Dt * Pr;
R = PaP * Lmda;

PDCt = (Prng .* Dt)/Peff;
PDCr = (PaP / E*Lmda * Pav); 
PDC = ((E)*(4*pi*R^2)*2)./(Pr*Peff.*Prng);
%WHAT IS THE EQUATION??
plot(Prng, PDC);