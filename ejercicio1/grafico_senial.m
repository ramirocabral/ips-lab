function grafico_senial(n,x)
    % subplot(2, 1, 1);
    stem(n, x, "filled", "markersize", 4);
    title('Señal');
    xlabel('n');
    ylabel('x[n]');
    grid on;

    set(gcf, 'Units', 'Inches', 'Position', [1, 1, 12, 10]);
    print(gcf, 'figures/senial', '-dpdfcrop','-bestfit');
    
end