function H = parse_MacKay(file, k, n)
    array = dlmread(file);
    H = spalloc(n-k, n, prod(size(array)));
    for i = 1:n
        H(array(i, :),i) = 1;
    end
    return;
end
