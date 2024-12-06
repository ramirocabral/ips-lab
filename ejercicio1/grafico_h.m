function grafico_h (n, h, i)
    subplot(2,1,1);
    stem(n, h);
    % axis([-12 12 0 0.6]); % Ajusta los límites del eje X e Y manualmente
    titulo = sprintf('Respuesta impulsional del sistema %d', i);
    y_label = sprintf('h_{%d}[n]', i);
    title(titulo);
    xlabel("s")
    ylabel(y_label)

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);
    archivo = sprintf('respuesta_impulsional_%d.tex', i);
    print(gcf, archivo, '-dtikz');
end