%% Project Shutdown
%
%
%
%% Environment Teardown Processes
% Clear up workspace for dialog message
clc;

% Close down project
disp('Closing down project.');

% Close any open data dictionaries
Simulink.data.dictionary.closeAll;
disp('Closed data dictionary(s)');

% Reset the location where generated code and other temporary files are
% created (slprj) to the default:
Simulink.fileGenControl('reset');