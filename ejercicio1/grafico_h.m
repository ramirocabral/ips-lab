function grafico_h (n, h, i)
    % subplot(2,1,1);
    stem(n, h, "filled", "markersize", 4);
    % axis([-12 12 0 0.6]);
    titulo = sprintf('Respuesta impulsional del sistema %d', i);
    y_label = sprintf('h_{%d}[n]', i);
    title(titulo);
    xlabel("n")
    ylabel(y_label)
    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, sprintf('figures/respuesta_impulsional_%d',i), '-dpdfcrop','-bestfit');
end