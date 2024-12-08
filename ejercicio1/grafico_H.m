# grafica modulo y fase de la tftd
function grafico_H(H, i)
    ds = 0.001;
    s = -1/2:ds:1/2;
    subplot(2, 1, 1);
    plot(s, abs(H));
    titulo = sprintf('Módulo de la respuesta en frecuencia del sistema %d', i);
    title(titulo);
    xlabel('s [Hz]');
    axis tight
    y_label = sprintf('|H_{%d}(e^{j2πs})|', i);
    ylabel(y_label);
    grid on

    subplot(2, 1, 2);
    plot(s, angle(H));
    axis tight
    titulo = sprintf('Fase de la respuesta en frecuencia del sistema %d', i);
    title(titulo);
    xlabel('s [Hz]');
    y_label = sprintf('∠H_{%d}(e^{j2πs})', i);
    ylabel(y_label);
    grid on

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, sprintf('figures/respuesta_en_frecuencia_%d',i), '-dpdfcrop','-bestfit');
end
