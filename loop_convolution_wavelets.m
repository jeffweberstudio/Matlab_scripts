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
srate=12;
time=-1:1/srate:1;

%numSamples=24;
%time=linspace(0,24,numSamples)

f=4/2;

sine_wave=exp(2*pi*1i*f.*time)

s=4/(2*pi*f)
gaussian_win=exp(-time.^2./(2*s^2))

wavelet=sine_wave.*gaussian_win;
normalize=rescale(real(wavelet), 0.03, 2.2);

figure
subplot(311);
plot(time, real(sine_wave));
title('SineWave');

subplot(312);
plot(time, gaussian_win);
title('Gaussian');

subplot(313);
plot(time, real(wavelet));
title('wavelet');

filmArray=[normalize]
loop=repmat(filmArray, 1, 6)

%csvwrite('SineWave_convolution_S2_and_S4_Loop.csv',loop);

csvwrite('Wavelet_loop.csv',loop);