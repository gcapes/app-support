%TEACHING_INSTALLATION_TEST   Test that toolboxes are installed for
%                             teaching version
required_toolboxes = ["MATLAB", ...
    "Simulink", ...
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

missing_toolboxes = are_toolboxes_installed(required_toolboxes);
assert(isempty(missing_toolboxes), "Installation is missing toolboxes!")

