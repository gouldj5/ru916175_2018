%% 4.14.2
%There are three significant mechanisms in a two-way path between the radar transmitter and
%receiver. The presence of multipath provide a propagation factor of 0.8, while atmospherics
%(rain and fog) provide factors of .95 and .99, respectively. What is the total propagation factor
%for the path?
Pf = 0.8;
Arf = 0.95;
Aff = 0.99;
Ar = Arf + Aff;
TPF = (Pf * Arf * Aff);
disp('Total Propagation Factor = 0.7524')

%% 4.14.4
%An EM wave travels through a heterogenous atmosphere with rain, fog, and clear air. For each
%type the distances are 2 km for rain, 1 km for clear air, and 2 km for fog. The attenuation for
%each of these types is listed as 1 db/km, 0.3 db/km, and 0.7 db/km two-way, respectively. What
%is the total one-way propagation factor for this path in db?

rd = 2; %km
ra = 1 / 2; %db/km
cad = 1; %km
caa = 0.3 / 2; %db/km
fd = 2; %km
fa = 0.7 / 2; %db/km

%tra = rd * ra; %db
%taa = cad * caa; %db
%tfa = fd * fa; %db

TotalAttenuation = rd*(ra)+ cad*(caa) + fd*(fa);
disp('Total Attenuation = 1.85 db')