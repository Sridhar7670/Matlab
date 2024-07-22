clc ;
clear ;
close all;
% Example Serial Data
serialData = [1, 2, 3, 4, 5, 6, 7, 8];

% Number of parallel elements (desired length of each row)
parallelLength =2 ;

% Convert Serial Data to Parallel Data
parallelData = reshape(serialData, parallelLength, []);

% Display Results
disp('Serial Data:');
disp(serialData);

disp('Parallel Data:');
disp(parallelData);

Sub_carrier1 = parallelData(:, 1);
disp("Sub_carrier1")
disp(Sub_carrier1);