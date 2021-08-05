% PARATEST    Test default parallel pool size
% Some CSF users appear to be under-utilizing their requested
% resources, because they're not explicitly defining the pool
% size. 
% This script tests the default pool size, and compares when creating
% a pool equal to the environment variable NSLOTS.
% NSLOTS should be bigger than 12 in order for this test to work.

nslots = str2double(getenv('NSLOTS'));
if nslots
    fprintf('Node size: %g cores\n', nslots)
else
    fprintf('NSLOTS variable not set\n')
end

parpool;
pp = gcp;
poolsize = pp.NumWorkers;
fprintf('Default number of workers: %g\n', poolsize);
parfor worker = 1:poolsize
    t = getCurrentTask(); 
    fprintf('Hello from worker %g\n', t.ID)
end
delete(gcp('nocreate'))

if nslots
    parpool(nslots);
    pp = gcp;
    poolsize = pp.NumWorkers;
    fprintf('Requested %g workers. Got %g.\n', nslots, poolsize);
    parfor worker = 1:poolsize
        t = getCurrentTask(); 
        fprintf('Hello from worker %g\n', t.ID)
    end
    delete(gcp('nocreate'))
end
