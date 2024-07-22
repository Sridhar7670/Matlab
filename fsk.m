clc;
clear;
close all;

f1 = input('Enter the frequency of carrier 1 (f1): ');
f2 = input('Enter the frequency of carrier 2 (f2): ');
fm = input('Enter the frequency of the message signal: ');

fs = 1000;
T = 1/fs;
t = 0:T:1;
amplitude = 1;
%% 

% Generate message signal
message = (square(2*pi*fm*t) + 1)/2;

% Generate carrier signals
carrier1 = sin(2*pi*f1*t);
carrier2 = sin(2*pi*f2*t);

% Generate FSK signal
for i = 1:1000
    if (message(i) == 1)
        s(i+1) = carrier1(i+1);
    else
        s(i+1) = carrier2(i+1);
    end
end

%% 

% Plotting
subplot(4,1,1);
plot(t, carrier1, 'r-', 'LineWidth', 1);
title('Carrier Signal 1');
xlabel('Time');
ylabel('Amplitude');
grid on;
%% 

subplot(4,1,2);
plot(t, carrier2, 'r-', 'LineWidth', 1);
title('Carrier Signal 2');
xlabel('Time');
ylabel('Amplitude');
grid on;
%% 

subplot(4,1,3);
plot(t, message, 'r-', 'LineWidth', 1);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
%% 

subplot(4,1,4);
plot(t, s, 'r-', 'LineWidth', 1);
title('Frequency Shifted Signal (FSK)');
xlabel('Time');
ylabel('Amplitude');
grid on;
