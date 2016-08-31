// two possible algorithms occur:

// if m:n is relatively large, it might be better to start from n and trace to the first m, that way each n only needs to find its nearest m (which is likely close)
// if m:n is relatively small, it might be better to compute [m - n] for all values of m and then pick the smallest value.

// since the ratio m:n is trivial to compute for a given dataset, it might be worth calculting the ratio and selecting algorithms on case-by-case basis
// (need to determine where the algorithms crossover)
