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
numSamples=24;
time=linspace(0,24, numSamples);
        
% Frequency1
Frequency1=2;
y1=sin(2*pi*Frequency1*time);
normalizeY1=rescale(y1, 0.03, 2.2);
subplot(3,1,1);
plot(time,normalizeY1);
grid on;
title('y1', 'FontSize', fontSize);

% Frequency2
Frequency2=4;
y2=sin(2*pi*Frequency2*time);
normalizeY2=rescale(y2,0.03,2.2);
subplot(3,1,2);
plot(time,normalizeY2);
grid on;
title('y2', 'FontSize', fontSize);

%Convolution s1.*s2
conv_y1y2=y1.*y2;
conv=rescale(conv_y1y2,0.03,2.2);
subplot(313);
plot(time, conv),
grid on;y
title('convolution', 'FontSize',fontSize)

filmArray=[conv]
loop=repmat(filmArray, 1, 6)

csvwrite('SineWave_convolution_S2_and_S4_Loop.csv',loop);