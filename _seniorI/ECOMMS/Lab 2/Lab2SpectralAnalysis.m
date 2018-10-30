%% Part 1 Single Tone
iTones = 0;
part1SingleTones = cell(6,1);
for iDepth = [10 30 60 80 100 120]
   iTones = iTones + 1; 
   part1SingleTones{iTones} = csvread(['singletone_',num2str(iDepth),'.csv'],2);
end
time = part1SingleTones{1}(:,1);
envelops = zeros(size(time,1),6);
modulatedSignals = zeros(size(time,1),6);
for iDepth = 1:6
   modulatedSignals(:,iDepth) = part1SingleTones{iDepth}(:,2);
   envelops(:,iDepth) = part1SingleTones{iDepth}(:,3);
end
Ts = time(size(time,1)) - time(size(time,1)-1);
Fs = 1/Ts;
L = size(time,1);
F = Fs*(0:(L-1))/L;
spectrumModulated = zeros(size(time,1),6);
spectrumEnvelope = zeros(size(time,1),6);
depth = [10 30 60 80 100 120];
for iDepth = 1:6
   spectrumModulated(:,iDepth) = abs(fft(modulatedSignals(:,iDepth))/L);
   plot(F,spectrumModulated(:,iDepth),'LineWidth',2)
   xlabel('frequency (Hz)')
   ylabel('Spectrum')
   print(['spectrumModulatedDepth',num2str(depth(iDepth))],'-dpng');
   close all
   spectrumEnvelope(:,iDepth) = abs(fft(envelops(:,iDepth))/L);
   plot(F,spectrumEnvelope(:,iDepth),'LineWidth',2)
   xlabel('frequency (Hz)')
   ylabel('Spectrum')
   print(['spectrumEnvelopDepth',num2str(depth(iDepth))],'-dpng');
   close all
end
%% Part 2 Multi Tone
dummy = csvread('Part1audio1.csv',2);
time = dummy(:,1);
audio = dummy(:,2);
dummy2 = csvread('Part1AudioMod.csv',2);
envelope = dummy2(:,2);
modulation = dummy2(:,3);
Ts = time(size(time,1)) - time(size(time,1)-1);
Fs = 1/Ts;
L = size(time,1);
F = Fs*(0:(L-1))/L;
spectrumAudio = abs(fft(audio)/L);
plot(F,spectrumAudio,'LineWidth',2)
xlabel('frequency (Hz)')
ylabel('Spectrum')
print(['spectrumAudio'],'-dpng');
close all
spectrumEnvelope = abs(fft(envelope)/L);
plot(F,spectrumEnvelope,'LineWidth',2)
xlabel('frequency (Hz)')
ylabel('Spectrum')
print(['spectrumEnvelope'],'-dpng');
close all
spectrumModulation = abs(fft(modulation)/L);
plot(F,spectrumModulation,'LineWidth',2)
xlabel('frequency (Hz)')
ylabel('Spectrum')
print(['spectrumModulation'],'-dpng');
close all