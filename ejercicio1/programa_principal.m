# Inciso 1
NUMERO_ALUMNO = 032266;

[n, x] = senial(NUMERO_ALUMNO);
%graficamos la senial
% grafico_senial(n, x);

% calculamos la transformada de fourier
X = tftd(x, n);

% graficamos modulo y fase de la tftd
grafico_tftd(X);


% Insciso 3

% funcion delta de kronecker
n = -10:10;
delta = zeros(size(n));
delta (n == 0) = 1;

% sistema 1
h1 = sistema1(n, delta);
% grafico_h(n, h1, 1);
H1 = tftd(h1, n);
% grafico_H(H1, 1);

% sistema 2
h2 = sistema2(n, delta);
% grafico_h(n, h2, 2);
H2 = tftd(h2, n);
% grafico_H(H2, 2);

% sistema 3
h3 = sistema3(n, delta);
%grafico_h(n, h3, 3);
H3 = tftd(h3, n);
%grafico_H(H3, 3);

% sistema 4
h4 = sistema4(n, delta);
%grafico_h(n, h4, 4);
H4 = tftd(h4, n);
%grafico_H(H4, 4);


% Incisos 4 y 5
n = 0:100;

% sistema 1
y1 = sistema1(n, x);
% grafico_senial_salida(n, y1, 1)
Y1 = tftd(y1, n);
% grafico_tftd_sistema(Y1, 1);

% sistema 2
y2 = sistema2(n, x);
%grafico_senial_salida(n, y2, 2)
Y2 = tftd(y2, n);
% grafico_tftd_sistema(Y2, 2);

% sistema 3
y3 = sistema3(n, x);
%grafico_senial_salida(n, y3, 3)
Y3 = tftd(y3, n);
% grafico_tftd_sistema(Y3, 3);

% sistema 4
y4 = sistema4(n, x);
% grafico_senial_salida(n, y4, 4)
Y4 = tftd(y4, n);
% grafico_tftd_sistema(Y4, 4);