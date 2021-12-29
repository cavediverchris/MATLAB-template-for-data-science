%% PROJECT SET UP Set up development environment
% This script sets up the environment for the current Simulink Project.
% This script needs to be added to the Shortcuts to Run at Start to ensure
% all the initialisation is conducted at project start.
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
%% Clear the workspace and command window
% The workspace is cleared of all current variables and all windows are
% closed.
clc
clear vars
close all

%% Acquire Project Information
% Set up the Project object.

projObj = currentProject;
%% Back Up - Project Folder
% This schedules an aut-export of the Simulink project every day, it simply
% checks whether a folder with the project name / date exists in the export
% location

% Print message to screen.
disp('Back Up Process');

% Set this flag to false to disable archiving
BackUpFlag = true;

% Define the location for export. This is based upon the userpath.
exportLocation = userpath + "\SLProjBackUps\";

% Check that exportLocation is a valid path
if exist(exportLocation, 'dir') == 0
    % CASE: exportLocation does not exist as a path
    % ACTION: create folder at exportLocation
    try
        mkdir(exportLocation);
    catch ME
        % TODO
        if strcmp(ME.identifier, 'MATLAB:MKDIR:OSError')
            disp("Cannot create folder at path: " + exportLocation);
        end
    end
end

filename = projObj.Name + "_backup_" + date;
backupFile = exportLocation + filename;

% Check if the backup file exists for today, if not, create it.
if BackUpFlag == false
    % Print message to screen.
    disp('... Secondary back-up disabled.')
else
    files = ls(exportLocation);
    files = string(files);
    
    matches = contains(files, filename);
    
    
    if any(matches)
        % CASE: A back-up already exists
        % ACTION: Skip backing up
        disp ('... Archive file found for current project - skipping export')
    else
        % CASE: No back up found
        % ACTION: Do back up
        disp("... No archive file found, exporting project to " + backupFile)
        
        export(projObj, backupFile, 'ArchiveReferences', false);
        
        % Print message to screen.
        disp('... Back up completed.')
        
    end
end
clear slashIdx backupFile BackUpFlag CurrentFolder exportLocation filename
%% Update Template Folder
% In this section the path that contains templates for use by other projects is defined.
myTemplate = Simulink.exportToTemplate(projObj, erase(projObj.Name, " "), ...
                 'Group', 'Simulink', ...
                 'Author', getenv('USERNAME'), ...
                 'Description', projObj.Description, ...
                 'Title', projObj.Name, ...
                 'ThumbnailFile', projObj.RootFolder + "\AuxiliaryFunctions\ProjectManagement\TemplateThumbnailImage.png");

% Move the newly created template to the communal templates folder
movefile(myTemplate, userpath, 'f');

clear myTemplate projObj
%% Clean Up
% clear up the workspace
clear vars