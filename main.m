	clc;
	clear all;
	close all;

	global eps;
	global minPoints;
	global data;

% 	eps = 1;
% 	minPoints = 5;
% 	nameDS = 'R15DS.xlsx';

	eps = 1500;
	minPoints = 20;
	nameDS = 'a1DS.xlsx';

% 	eps = 2.5;
% 	minPoints = 3;
% 	nameDS = 'spiralDS.xlsx';
% 

% 	eps = 2.7;
% 	minPoints = 2;
% 	nameDS = 'jainDS.xlsx';
% 
% 	eps = 1.7;
% 	minPoints = 3;
% 	nameDS = 'CompoundDS.xlsx';

% 	eps = 40;
% 	minPoints = 5;
% 	nameDS = 'asymmetricDS.xlsx';


 	data = xlsread(nameDS);
	DbscanAlgorithm();
	showPlot();