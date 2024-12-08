function grafico_tftd_sistema(X,i)
    ds = 0.001;
    s = -1/2:ds:1/2;
    subplot(2, 1, 1);
    plot(s, abs(X));
    title(sprintf('Módulo de la TFTD de la salida del sistema %d', i));
    xlabel('s [Hz]');
    y_label = sprintf('|Y_%d(e^{j2πs})|', i);
    ylabel(y_label);
    axis tight
    grid on;

    subplot(2, 1, 2);
    plot(s, angle(X));
    axis tight
    title(sprintf('Fase de la TFTD de la salida del sistema %d', i));
    xlabel('s [Hz]');
    y_label = sprintf('∠Y_%d(e^{j2πs}) [rad]', i);
    ylabel(y_label);
    grid on;

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, sprintf('figures/tftd_sistema_%d',i), '-dpdfcrop','-bestfit');
end