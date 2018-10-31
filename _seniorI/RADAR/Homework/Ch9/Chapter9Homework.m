%% Radar Homework Chapter 9 - Joshua Gould

%% 9-8
%Consider a five-element linear array with element spacing of 0.5 wavelengths. Assume the
%path length from each element to summation point (phi n) is equal. Using computational software
%(e.g., Matlab, Excel), plot the normalized array factor for incidence angles from -90 to +90?.
%MATLAB Code from Sensor Array Analyzer App

% Create a uniform linear array
h = phased.ULA;
h.NumElements = 5;
h.ElementSpacing = 0.5;
h.ArrayAxis = 'y';
%Create Isotropic Antenna Element
el = phased.IsotropicAntennaElement;
h.Element = el;
%Assign frequencies and propagation speed
F = 300000000;
PS = 300000000;
%Create figure, panel, and axes
fig = figure;
panel = uipanel('Parent',fig);
hAxes = axes('Parent',panel,'Color','none');
NumCurves = length(F);
%Plot 2d graph
fmt = 'rectangular';
cutAngle = 0;
pattern(h, F, -90:90, cutAngle, 'PropagationSpeed', PS, 'Type', ...
    'directivity', 'CoordinateSystem', fmt );
axis(hAxes,'square')
%Create legend
legend_string = cell(1,NumCurves);
lines = findobj(gca,'Type','line');
for idx = 1:NumCurves
    [Fval, ~, Fletter] = engunits(F(idx));
    legend_string{idx} = [num2str(Fval) Fletter 'Hz; No Steering'];
end
legend(legend_string, 'Location', 'southeast');



%% 9-9
%A linear array is to be designed that operates at 10 GHz and has a 1deg beamwidth (assume
%uniform illumination). This array must electronically scan to 65? without grating lobes. What
%will the element spacing be? How many elements will be used?
clc
f = 10; %GHz
c = 300000000; %m/s
WL = (c / (f*10^9));
Bw = 1; %degree beamwidth
Tbw = 65 * (pi/180); %degree target scan
k = 228.60; % Boltzman Constant

x = (WL / (1 + sin(Tbw) )) ;
Bwr = 1 * pi/180;
L = ( 0.886 * WL )/Bwr; %L in m
N = L / x;
fprintf('x = %f m. ',x)
fprintf ('\nNumber of elements = %f.',round(N))