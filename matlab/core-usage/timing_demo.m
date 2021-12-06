function time_taken = timing_demo(m)
    % TIMING_DEMO   Return time taken to assign values to a m*m matrix
    tic
    a = rand(m);
    b = rand(m);
    c = a*b;
    time_taken = toc;