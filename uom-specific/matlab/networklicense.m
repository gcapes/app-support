%productinfo = ver;
ver
toolboxes = char('Bioinformatics_Toolbox', ...
'Control_Toolbox', ...
'RTW_Embedded_Coder', ...
'Financial_Toolbox', ...
'Fuzzy_Toolbox', ...
'GADS_Toolbox', ...
'Image_Toolbox', ... 
'MATLAB', ...
'MATLAB_Coder', ...   
'Compiler', ...   
'Neural_Network_Toolbox', ...
'Optimization_Toolbox', ...
'OPC_Toolbox', ...
'Distrib_Computing_Toolbox', ...
'PDE_Toolbox', ...
'Robust_Toolbox', ...
'Signal_Toolbox', ...
'SIMULINK', ...
'Virtual_Reality_Toolbox', ...
'Real-Time_Workshop', ...
'Simulink_Control_Design', ...
'Statistics_Toolbox', ...
'Symbolic_Toolbox', ...
'Identification_Toolbox', ...
'Wavelet_Toolbox');
          
toolboxes = cellstr(toolboxes);
totaltoolboxes = size(toolboxes);

for i = 1:totaltoolboxes
    %licensename = strrep(productinfo(i).Name, ' ', '_');    
    %fprintf(productinfo(i).Name);
    %fprintf('\n%s',licensename);
    %printf(' v%s\nLicense Exists:...............',productinfo(i).Version); 
    
    %disp(toolboxes(i));
    disp(toolboxes(i));
    
    
    fprintf('    License Exists:  ')
    
    if license('test', char(toolboxes(i)))
        fprintf('TRUE\n\n\n');

    else
        fprintf('FALSE\n\n\n');
    end
end
fprintf('Current licenses in use on this machine: \n')
license('inuse');
prompt = 'Do you want to test if the existing licenses can be checked out? [Y/N]\nWARNING: Licenses checked out remain in use until MATLAB closes, proceed with caution.\nAny licenses with maximum current users will not be able to be checked out.\n';
str = input(prompt,'s');
if isempty(str)
    str = 'N';
end
str=lower(str);
if str == 'y' || strcmp(str, 'yes')
        for i = 1:totaltoolboxes
            if license('test', char(toolboxes(i)))
                disp(toolboxes(i));
                if license('checkout', char(toolboxes(i)))
                    fprintf('    Can Be Checked Out: TRUE\n\n');
                else
                    fprintf('    Can Be Checked Out: FALSE\n\n');
                end
            end
        end
    fprintf('Current licenses in use on this machine: ')
    license('inuse');
end

        