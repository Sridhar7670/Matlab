clc;
clear;
close all;

% Parameters
Fs = 1000;    % Sampling frequency, Hz
T = 1/Fs;      % Sampling period
t = 0:T:1;     % Time vector from 0 to 1 second
F1 = 2.5;
f2 = 10;
%% 

% Generate a square wave signal (representing binary data)
square = square(2*pi*F1*t);

% Message signal
message = sin(2*pi*f2*t);

% BPSK modulation using the square wave
pskSignal = zeros(size(t));  % Initialize PSK signal
%% 

for i = 1:length(t)
    if square(i) == 1
        pskSignal(i) = sin(2*pi*f2*t(i));
    else
        pskSignal(i) = sin(2*pi*f2*t(i)+180);
    end
end
%% 

% Plotting

subplot(3,1,1);
plot(t, square, 'r-', 'LineWidth', 1);
title('Square Wave Signal (Binary Data Representation)');
xlabel('Time');
ylabel('Amplitude');
%% 

subplot(3,1,2);
plot(t, message, 'b-', 'LineWidth', 1);
title('Sine Wave Message Signal');
xlabel('Time');
ylabel('Amplitude');
%% 


subplot(3,1,3);
plot(t, pskSignal, 'g-', 'LineWidth', 1);
title('PSK Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
