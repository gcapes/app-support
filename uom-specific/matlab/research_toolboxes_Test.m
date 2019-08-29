product_info = ver;
required_toolboxes = [
    "Bioinformatics Toolbox", ...
    "Control System Toolbox", ...
    "Deep Learning Toolbox", ...
    "Embedded Coder", ...
    "Financial Toolbox", ...
    "Fuzzy Logic Toolbox", ...
    "Global Optimization Toolbox", ...
    "Image Processing Toolbox", ...
    "MATLAB", ...
    "MATLAB Coder", ...
    "MATLAB Compiler", ...
    "Optimization Toolbox", ...
    "Parallel Computing Toolbox", ...
    "Partial Differential Equation Toolbox", ...
    "Robust Control Toolbox", ...
    "Signal Processing Toolbox", ...
    "Simulink", ...
    "Simulink 3D Animation", ...
    "Simulink Coder", ...
    "Simulink Control Design", ...
    "Statistics and Machine Learning Toolbox", ...
    "Symbolic Math Toolbox", ...
    "System Identification Toolbox", ...
    "Wavelet Toolbox"];
    
installed_toolboxes = string({product_info.Name});

for i = 1:length(required_toolboxes)
    toolbox = required_toolboxes(i);
    assert(any(contains(installed_toolboxes, toolbox)), "%s not installed", toolbox)
end

for i = 1:length(required_toolboxes)
    toolbox = required_toolboxes(i);
    assert(licence('test', toolbox), "No licence available for %s", toolbox)