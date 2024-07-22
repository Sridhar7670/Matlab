clc;
clear;
close all;
%% 
% Parameters
fs=1000;
T=1/fs;
t=0:T:1;
f1=10;
f2=5;
% Sampling period
amplitude = 1; % Amplitude 
message = amplitude.*sin(2*pi*f1*t); %  sin function
carrier = (square(2*pi*f2*t)+1)/2; %  square function
ask = message.*carrier;

%% 
figure(1)
subplot(3, 1, 3);
plot(t, ask,'g-','LineWidth', 2);
title('ASK Modulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

 subplot(3, 1, 1);
 plot(t, message, 'b-','LineWidth', 2);
title('Message Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, carrier, 'r-','LineWidth', 2);
title('carrier Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
%% 


% Demodulation using envelope detection
envelope = abs(hilbert(ask));
threshold = 0.5;
ask_demodulated = envelope > threshold;

% Plotting
figure(2)
subplot(3, 1, 1);
plot(t, ask, 'b-', 'LineWidth', 2);
title('modulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, carrier, 'r-', 'LineWidth', 2);
title('Carrier Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, ask_demodulated, 'k-', 'LineWidth', 2);
title('Demodulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
disp(ask_demodulated)
grid on;
