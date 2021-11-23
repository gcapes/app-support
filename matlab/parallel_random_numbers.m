% parallel_random_numbers  Test generation of random numbers in parfor

parmax = 10;
formax = 5;
serial_rand_nums = zeros(parmax*formax, 1);
randimax = 400;

%% Serial
rng default
fprintf("Serial:\n")
for i = 1:parmax*formax
    rnum = randi(randimax, 1);
    fprintf("\tloop %d: %d\n", i, rnum)
    serial_rand_nums(i) = rnum;
end
print_duplicates(serial_rand_nums)

%% Parallel
rng default
fprintf("Parfor:\n")
parmax = 10;
formax = 5;
rand_nums = zeros(parmax, formax);
parfor i = 1:parmax
    t = getCurrentTask();
    rnum_slice = randi(randimax, [1, formax]);
    for sub = 1:formax
        rnum = rnum_slice(sub)
        fprintf("\tloop %02i, subloop %02i on worker %d: %d\n", i, sub, t.ID, rnum)
    end
    rand_nums(i, :) = rnum_slice;
end
print_duplicates(rand_nums)

%% Repeatable numbers in parfor
fprintf("Parfor - repeatable numbers:\n")
rng(0, 'combRecursive');
rand_nums = zeros(parmax, formax);
parfor i = 1:parmax
    stream = RandStream.getGlobalStream();
    stream.Substream = i;
    t = getCurrentTask();
    rnum_slice = randi(randimax, [1, formax]);
    for sub = 1:formax
        rnum = rnum_slice(sub)
        fprintf("\tloop %02i, subloop %02i on worker %d: %d\n", i, sub, t.ID, rnum)
    end
    rand_nums(i, :) = rnum_slice;
end
print_duplicates(rand_nums)


