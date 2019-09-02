%RESEARCH_LICENCE_TEST   Test if toolbox licences are available.
%                        This is for the research licence 1560.

% To test a licence, you have to use the feature name of the product
% as it appears in the licence file, rather than the actual name of the
% toolbox.
feature_name = ["Bioinformatics_Toolbox", ...
    "Control_Toolbox", ...
    "RTW_Embedded_Coder", ...
    "Financial_Toolbox", ...
    "Fuzzy_Toolbox", ...
    "GADS_Toolbox", ...
    "Image_Toolbox", ... 
    "MATLAB", ...
    "MATLAB_Coder", ...   
    "Compiler", ...   
    "Neural_Network_Toolbox", ...
    "Optimization_Toolbox", ...
    "Distrib_Computing_Toolbox", ...
    "PDE_Toolbox", ...
    "Robust_Toolbox", ...
    "Signal_Toolbox", ...
    "SIMULINK", ...
    "Virtual_Reality_Toolbox", ...
    "Real-Time_Workshop", ...
    "Simulink_Control_Design", ...
    "Statistics_Toolbox", ...
    "Symbolic_Toolbox", ...
    "Identification_Toolbox", ...
    "Wavelet_Toolbox"];

if computer('arch') == "win64"
    % OPC toolbox only installed for Windows.
    % Not testing licence availability for NAG toolbox because it's third
    % party and licenced separately.
    feature_name = [feature_name, "OPC_Toolbox"];
end

%% Test correct licence
assert(license == "1560")

%% Test licences exist
licence_exists = do_licences_exist(feature_name);
assert(all(licence_exists), "Licence doesn't exist for all toolboxes!")

%% Test licence can be checked out
for i = 1:length(feature_name)
    toolbox = feature_name(i);
    assert(logical(license('checkout', toolbox)), "Licence can't be checked out for %s", toolbox)
    fprintf('Licence checked out for %s.\n', toolbox)
end
