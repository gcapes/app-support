%TEACHING_INSTALLATION_TEST   Test that toolboxes are installed for
%                             teaching version
required_toolboxes = ["MATLAB", ...
    "SIMULINK", ...
    "Aerospace Blockset", ...
    "Aerospace Toolbox", ...
    "Control System Toolbox", ...
    "Robust Control Toolbox", ...
    "Simscape", ...
    "Simscape Fluids", ...
    "Simscape Multibody", ...
    "Simscape Electrical", ...
    "Simulink 3D Animation", ...
    "Symbolic Math Toolbox", ...
    "System Identification Toolbox"];

are_toolboxes_installed(required_toolboxes)
