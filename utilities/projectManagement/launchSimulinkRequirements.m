%% LAUNCH SIMULINK REQUIREMENTS Open the editor to view Simulink Requirements
%   There is not a convenient link to being able to see Simulink
%   Requirements. This function will launch the requirements editor on
%   startup.
%
%   FUNCTION INPUTS
%       None
%
%   FUNCTION OUTPUTS
%       None
%
%   OTHER OUTPUTS
%       None
%
%   LINKS
%   For further information check out: <a href="matlab:web('https://github.com/cavediverchris/MATLAB-Project-Template-System-Design#understand-the-utility-files')">Git documentation</a>.
%
%% Launch Simulink Requirements Editor

% Need to check if Simulink Requirements licence even exists
status = license('test','slvnv');

if status == true
    slreq.open('ProjectRequirements');
else
    % CASE: Licence for SL Requirements (previous the VNV toolbox) not
    % available
    % ACTION: throw warning
    disp('Simulink Requirements not installed.')
end