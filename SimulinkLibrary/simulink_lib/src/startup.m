project = simulinkproject;
projectRoot_mod_interface_helperfun = project.RootFolder;

try
  % check if build folder exists and clean it up
  if(exist([projectRoot_mod_interface_helperfun '/build'], 'dir'))
    rmdir([projectRoot_mod_interface_helperfun '/build'], 's'); 
  end
  % create an empty build directory 
  mkdir([projectRoot_mod_interface_helperfun '/build']); 
  disp('Build folder setup done.'); 
catch e
    disp('Exception: ');
    disp(getReport(e))
  error('Setup of build folder failed.'); 
end

myCacheFolder = fullfile(projectRoot_mod_interface_helperfun, 'build');
myCodeFolder = fullfile(projectRoot_mod_interface_helperfun, 'build');

Simulink.fileGenControl('set',...
    'CacheFolder', myCacheFolder,...
    'CodeGenFolder', myCodeFolder,...
    'createDir', true)
