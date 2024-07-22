% BPSK Signal Generation
clear; close all; clc;

% Parameters
M = 2;          % Modulation order (BPSK)
nData = 200;   % Number of bits
Fc = 100;       % Carrier frequency, Hz
Fb = 100;       % Bit (baud) rate, bps
Fs = 8*Fc;      % Sampling frequency, Hz
Ts = 1/Fs;      % Sample time, sec
spb = Fs/Fb;    % Samples per bit

% Generate random data bits
data = randi([0 M-1], nData, 1);

% BPSK Modulation
modulatedSignal = real(pskmod(data, M));

% Time vector
t = 0:Ts:(nData-1)*Ts;

% Plot the BPSK signal
figure;
plot(t, modulatedSignal, 'LineWidth', 1);
title('BPSK Modulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
