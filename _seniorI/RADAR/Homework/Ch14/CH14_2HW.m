%% Joshua Gould - Homework Chapter 14 - 2

%% 14-2
%How many pulses must be coherently integrated to produce an integration gain sufficient to 
%increase the detection range for a given target from 5 to 50 miles?

t1 = 5; %miles
t2 = 50; %miles
%difference in miles
td = t2-t1; %miles
%gain required
tg = t2/t1;

Igain = tg