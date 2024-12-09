function grafico_audio_filtrado(y, i)
    plot(y);
    xlabel('t');
    ylabel('y(t)');
    print(gcf, sprintf('figures/senial_audio_filtrada_%d_ramas',i), '-dpdfcrop','-bestfit');
end