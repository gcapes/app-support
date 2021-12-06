function parfor_threads(num_threads, pool_size)
    % PARFOR_THREADS  Test matrix assignment for num_threads and pool_size.
    %                 You can then look at 'top' to see how much CPU is used 
    %                 and how many processes are running

    if ischar(num_threads)
        num_threads = str2double(num_threads);
    end
    if ischar(pool_size)
        pool_size = str2double(pool_size);
    end
    fprintf("We are using %i threads\n",num_threads)
    maxNumCompThreads(num_threads);
    fprintf("The pool size is %i\n",pool_size)
    current_pool =  gcp('nocreate');
    if ~isempty(current_pool)
        delete(gcp('nocreate'))
    end
    parpool('local', pool_size);
        
    parfor i = 1:4
        t = getCurrentTask(); 
        fprintf("Parallel worker %i is using %i threads\n", t.ID, maxNumCompThreads)
        fprintf("Worker %i execution time = %3.3f seconds\n", t.ID, timing_demo(5000))
    end