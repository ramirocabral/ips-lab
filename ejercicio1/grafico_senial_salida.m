function grafico_senial_salida(n, x, i)
    subplot(3,2,1);
    stem(n, x);
    titulo = sprintf('Salida del sistema %d', i);
    y_label = sprintf('y_{%d}[n]', i);
    title(titulo);
    xlabel("s")
    ylabel(y_label)
end