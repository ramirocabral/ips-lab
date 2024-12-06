function grafico_senial(n,x)
    % subplot(2, 1, 1);
    stem(n, x);
    title('Señal');
    xlabel('n');
    ylabel('x[n]');
    grid on;
end