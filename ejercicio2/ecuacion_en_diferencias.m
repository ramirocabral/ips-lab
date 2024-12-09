function y = ecuacion_en_diferencias (x)

    N = length(x);

    y = zeros(1, N);

    %ecuacion: y[n] = x[n] - 0.5 * x[n-8820] + 0.25 * x[n-17640]
    for n = 1:N
        if n<=8820
            y(n) = x(n);
        else
            if n<=17640
                y(n) = x(n) - 0.5 * x(n-8820);
            else
                y(n) = x(n) - 0.5 * x(n-8820) + 0.25 * x(n-17640);
            end
        end
    end
end
