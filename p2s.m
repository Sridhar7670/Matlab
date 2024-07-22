clc;
clear;
close all;
% Example Parallel Data
parallelData = [1, 2; 3, 4; 5, 6; 7, 8];

% Reshape Parallel Data to Serial Data
serialData = reshape(parallelData.', 1, []);

% Display Results
disp('Parallel Data:');
disp(parallelData);

disp('Serial Data:');
disp(serialData);
