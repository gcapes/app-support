function threads(num_threads)
    % THREADS   Test execution time for num_threads
    if ischar(num_threads)
        num_threads = str2double(num_threads);
    end
    fprintf("We are using %d threads\n",num_threads)
    maxNumCompThreads(num_threads);
    fprintf("Multithreaded execution time with %i threads = %3.3f seconds\n", num_threads, timing_demo(10000))
end