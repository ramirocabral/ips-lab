% Inciso 1

NUMERO_ALUMNO = 032266;

[n,h] = hcanald(NUMERO_ALUMNO);

% grafico_respuesta_impulsional(n,h);

% ver puntos de la respuesta impulsional
% indices y valores en donde no es cero

indices = find(h)
valores = h(indices)

% Inciso 2
 
n = [0:1:60000];

delta = zeros(1,length(n));
delta (1) = 1;

% Verificamos que la respuesta impulsional es igual a la hA[n]
h2 = ecuacion_en_diferencias(delta);
% grafico_respuesta_impulsional(n,h2);


% Inciso 3

[x, fs] = audioread('audio.wav');
sound(x, fs);

% plot(x,'r');
% xlabel('t');
% ylabel('x(t)');
% print(gcf, 'figures/senial_audio', '-dpdfcrop','-bestfit');


y = ecuacion_en_diferencias(x);
% plot(y);
% xlabel('t');
% ylabel('y(t)');
% print(gcf, 'figures/senial_audio_procesada', '-dpdfcrop','-bestfit');


% Inciso 4

ha = ecuacion_en_diferencias(delta);
% stem(n,ha);
y1 = filtro_2_ramas(ha);
% grafico_respuesta_cascada(n,y1,2);

y2 = filtro_3_ramas(ha);
% grafico_respuesta_cascada(n,y2,3);

% Inciso 5

y_2_ramas = filtro_2_ramas(y);
sound(y_2_ramas, fs);
% grafico_audio_filtrado(y_2_ramas,2);


y_3_ramas = filtro_3_ramas(y);
% sound(y_3_ramas, fs);
% grafico_audio_filtrado(y_3_ramas,3);