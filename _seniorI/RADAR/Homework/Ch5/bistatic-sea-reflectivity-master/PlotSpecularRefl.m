clear

freqGHz = 10; % per pg. 4 of Report
seastate = ['0','2','3','5','6'];
sigmaH = [0.01, 0.11, 0.29, 1.03, 1.61]; % Table 1 of Report for SS 0,2,3,5,6
%%
gamma = 0:0.01:6;
%% Figure 2 of Report
% doesn't quite match  Figure 2.
figure(2), clf(2)
ax = axes('nextplot','add');
grid(ax,'on')
i = 1;
for s = sigmaH
  Rhos = specular_reflection(s, gamma, freqGHz);
  plot(ax, gamma, Rhos,'DisplayName', seastate(i))
  i = i+1;
end

legend(ax,'show')
title(ax,'Specular Reflectivity vs. grazing angle and sea state')
xlabel(ax,'Grazing angle [deg]')
ylabel(ax,'reflection [normalized]')