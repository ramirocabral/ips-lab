function grafico_respuesta_cascada(n,y,i)
stem(n,y, 'filled');
xlabel('n');
ylabel(sprintf('h_%d[n]',i));
print(gcf, sprintf('figures/filtro_%d_ramas',i), '-dpdfcrop','-bestfit');