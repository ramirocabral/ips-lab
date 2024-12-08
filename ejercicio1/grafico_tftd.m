# grafica modulo y fase de la tftd
function grafico_tftd(X)
    ds = 0.001;
    s = -1/2:ds:1/2;
    subplot(2, 1, 1);
    plot(s, abs(X));
    title('Módulo de la TFTD');
    xlabel('s [Hz]');
    axis tight
    ylabel('|X(e^{j2πs})|');
    grid on

    subplot(2, 1, 2);
    plot(s, angle(X));
    axis tight
    title('Fase de la TFTD');
    xlabel('s [Hz]');
    ylabel('∠X(e^{j2πs})');
    grid on

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);

    print(gcf, 'figures/tftd', '-dpdfcrop','-bestfit');
end
