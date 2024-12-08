function grafico_senial_salida(n, x, i)
    % subplot(3,2,1);
    stem(n, x, "filled", "markersize", 4);
    titulo = sprintf('Salida del sistema %d', i);
    y_label = sprintf('y_{%d}[n]', i);
    title(titulo);
    xlabel("n")
    ylabel(y_label)

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, sprintf('figures/salida_sistema_%d',i), '-dpdfcrop','-bestfit');
end