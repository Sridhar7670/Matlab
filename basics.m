% Example demonstrating clc
disp('This is the beginning of the script.');
clc; % Clear the command window
disp('Now the command window is cleared.');


% Example demonstrating clear
a = 5;
b = 'Hello';
clear;% Clear all variables from the workspace
disp('Variables cleared from the workspace.');

% Example demonstrating close
figure;  % Open a new figure
plot(1:10);
disp('A figure is open. Closing it...');
close; % Close all figure windows
