function y2 = filtro_3_ramas(x)
    n_delay1 = 8820;
    n_delay2 = 26460;
    n_delay3 = 35280;

    N = length(x);
    y2 = zeros(1, N);

    for n = 1:N
        if n <= n_delay1
            y2(n) = x(n);
        elseif n <= n_delay2
            y2(n) = x(n) + (1/2) * x(n - n_delay1);
        elseif n <= n_delay3
            y2(n) = x(n) + (1/2) * x(n - n_delay1) - (1/8) * x(n - n_delay2);
        else
            y2(n) = x(n) + (1/2) * x(n - n_delay1) - (1/8) * x(n - n_delay2) - (1/16) * x(n - n_delay3);
        end
    end
end