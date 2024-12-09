function y1 = filtro_2_ramas (x)
    n_delay1 = 8820;
    n_delay2 = 26460;
    N = length(x);
    y1 = zeros(1,N);

    for n = 1:N
    if n <= n_delay1
        y1(n) = x(n);
    elseif n <= n_delay2
        y1(n) = x(n) + 0.5 * x(n - n_delay1);
    else
        y1(n) = x(n) + 0.5 * x(n - n_delay1) - (1/8) * x(n - n_delay2);
    end
end