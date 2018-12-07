%% Homework 4 - Joshua Gould
% Joshua Gould -
% ECOMMS - 
% 11/20/2018
%% Problem 1 
% A  Pulse  code  modulation  (PCM)  signal  is  a  binary  signal.  The
% digital  PCM  is  converted  from  an analog signal. The bandwidth of
% the analog signal is 1kHz. To convert the analog signal to the digital
% signal, the voltage of each sampling point is divided into 8 levels.
%% Problem 1a
% What is the baud (symbol rate) for this PCM signal? 
clc
B = 1; %kHz
n = 3;
L = 2^n;
SR = 2*B;
fprintf('Baud (symbol rate) = %f kHz',SR)
%% Problem 1b
% What is the bit rate for this PCM signal?

BR = SR;
fprintf('\nBit rate = %f kHz',BR)

%% Problem 1c
% What  is  the  minimum  bandwidth  for  a communication  system  to  transmit  this  PCM  signal (in unit of kHz)?
MinB = SR/2;
fprintf('\nMinimum Bandwidth for a communication system = %f kHz',MinB)

%% Problem 2 - Textbook 3-21
% A  multilevel  digital  communication  system  sends  one  of  16
% possible  levels  over  the  channel  every 0.8ms 
clc
fqs = 0.8; %ms
n = 4;
L = 2^n;
%% Problem 2a
% What is the number of bits corresponding to each level ? Or in another
% word, how many bits in each symbol? Note that the levels in this problem
% are different from the levels in the last problem.  In  the  last
% problem,  levels  are from  analog  to  digital  conversion,  while  in
% this problem, the digital signal itself is a multilevel signal.

R = L*fqs;
fprintf('Number of bits per level = %f bits',R)
%% Problem 2b
% What is the baud (symbol rate)?
SR = 1/fqs;
fprintf('\nBaud (symbol rate) = %f kHz',SR)
%% Problem 2c
% What is the bit rate?
BR = L*fqs;
fprintf('\nBit rate = %f kHz',BR)
%% Problem 3 
% The input of a differential coding signal is 10110010.
% Begin with the % reference digit �1�, what is the en coded sequence? In your solution,
% please label, which digit is reference digit, which digits are encoded
% sequence.
clc
Refsignal = 10110010;
Enc = 00101011;
fprintf('Encoded Signal = 00101011 with reference digit highlighted')