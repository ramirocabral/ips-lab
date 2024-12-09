function grafico_respuesta_impulsional (n, h)
    stem(n, h, "filled", "markersize", 4);
    titulo = 'Respuesta impulsional del sistema utilizando la ecuacion en diferencias';
    title(titulo);
    xlabel("n")
    ylabel("h_A[n]")
    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, sprintf('figures/respuesta_impulsional_2'), '-dpdfcrop','-bestfit');
end