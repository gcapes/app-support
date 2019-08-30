function are_toolboxes_installed(required_toolboxes)
%ARE_TOOLBOXES_INSTALLED    Test whether required_toolboxes are installed
    product_info = ver;
    installed_toolboxes = string({product_info.Name});
    
    for i = 1:length(required_toolboxes)
        toolbox = required_toolboxes(i);
        assert(any(contains(installed_toolboxes, toolbox)), "%s not installed", toolbox)
        fprintf('%s is installed.\n', toolbox)
    end