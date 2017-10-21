function H = parse_MacKay_NB(file, k, n, q)
    array = dlmread(file);
    H = spalloc(n-k, n, nnz(array)/2);
    [x,y] = find(array);
    H(array(y(1:2:end)),x) = array(y(2:2:end));
    return;
end
