%% Project Shutdown
%   The projectShutdown script is designed to run on Project Close to clean
%   up (remove) the local customisations made to the MATLAB Interactive
%   Development Environment (IDE).  
%
%% Environment Teardown Processes
% Clear up workspace for dialog message
clc;

% Close down project
disp('Closing down project.');

% Clear workspace
clear variables global
disp('... Cleared workspace');

% Close any open data dictionaries
Simulink.data.dictionary.closeAll;
disp('... Closed data dictionary(s)');