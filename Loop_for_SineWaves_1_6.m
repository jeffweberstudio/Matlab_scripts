%% intro
clc;
%close all;
%clear;
workspace;
format short g;
format compact;
fontSize=8
markerSize=6;
filmArray={}

%%
numSamples=24;
t=linspace(0,24, numSamples);

Frequency1=6;
y1=sin(2*pi*Frequency1*t);
normalizeY1=rescale(y1, 0.03, 2.2);
%subplot(3,1,1);
set(gcf, 'PaperPositionMode', 'auto');
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperPosition', [0 0 2.85 7]);  % [left bottom width height]
set(gcf, 'PaperSize', [3 6]);          % match the size exactly
plot(t,normalizeY1);
%plot(t,y1);
grid on;
title('y1', 'FontSize', fontSize);
%normalizeY1

filmArray=[normalizeY1]
loop=repmat(filmArray, 1, 6)
%csvwrite('SineWaves_loop_freq_1Hz.csv',loop);