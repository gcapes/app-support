function print_duplicates(m)
    [duplicates, n_duplicates] = find_duplicates(m);
    if duplicates
        fprintf("%i duplicates. Values:\n", n_duplicates)
        disp(duplicates)
    end
end

function [duplicates, n_duplicates] = find_duplicates(m)
    [C,ia,ic] = unique(m);
    duplicates = m(~ismember(1:numel(m), ia));
    n_duplicates = length(ic) - length(ia);
end

