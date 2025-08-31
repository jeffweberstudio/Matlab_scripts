%% Sine Wave 1 + Sine Wave 2 => Sum of S1 + S2
%% intro
clc;
close all;
clear;
workspace;
format short g;
format compact;
fontSize=8
markerSize=6;
filmArray={}

%%
%number of samples
numSamples=24;
t=linspace(0,24, numSamples);
        
% Frequency1
Frequency1=2;
y1=sin(2*pi*Frequency1*t);
normalizeY1=rescale(y1, 0.03, 2.2);
subplot(3,1,1);
plot(t,normalizeY1);
%grid on;
title('SineWave 1', 'FontSize', fontSize);

% Frequency2
Frequency2=4;
y2=sin(2*pi*Frequency2*t);
normalizeY2=rescale(y2,0.03,2.2);
subplot(3,1,2);
plot(t,normalizeY2);
%grid on;
title('SineWave 2', 'FontSize', fontSize);

% sum of all frequencies
all2y=(y1+y2);
normalizeSignal=rescale(all2y,0.03,2.2);
ns=normalizeSignal
subplot(3,1,3);
plot(ns,'b-');
%grid on;
title('SineWave 1 + 2', 'FontSize', fontSize)
%savefig("Fig_SineWave_1hz_2Hz.fig")

filmArray=[ns]
loop=repmat(filmArray, 1, 6)

%dOut=loop;
csvwrite('SineWaves_Sum_S2_and_S4_loop.csv',loop);