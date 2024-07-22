clc;
clear;
close all;
% Parameters
Fs = 1000;          % Sampling frequency, Hz
T = 1/Fs;           % Sampling period
t = 0:T:1;          % Time vector from 0 to 1 second

% Frequency of the square wave
frequency = 5;      % Adjust this to change the frequency of the square wave

% Generate square wave
squareWave = (square(2*pi*frequency*t)+1)/2;

% Plotting
plot(t, squareWave);
title('Square Wave');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

