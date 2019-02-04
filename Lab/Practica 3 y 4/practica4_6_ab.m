%% ESTADÍSTICA . PRÁCTICA 4 . EJERCICIO 6

%% Apartado a

N = 10000; 

% Situación de las antenas (sus coordenadas)

antenas = [1 9; 5 4; 15 7; 2 1; 12 2; 19 1; 15 2];

% Generación de los puntos que emiten señales (mis 10000 móviles, por
% ejemplo): se hace generando las coordenadas x e y, N de cada uno. Con
% rand generamos una U(0,1), así que tener los valores en el intervalo [0,20] y
% [0,10], multiplicamos por 20 y por 10 respectivamente.

puntos = [20*rand(N,1) 10*rand(N,1)];

% Inicializar matrices con ceros (las vamos a rellenar con los bucles)

cob = zeros(length(puntos), length(antenas));
dis = zeros(length(puntos), length(antenas));

% Para cada punto (móvil) y cada antena, vemos la distancia que los separa.
% Si es menor o igual que 3 (el alcance de la antena), ese punto tendrá
% cobertura con esa antena. 

for i = 1:length(puntos)
    for j = 1:length(antenas)
        dis(i,j) = sqrt((puntos(i,1) - antenas(j,1)).^2 + (puntos(i,2) - antenas(j,2)).^2); % Distancia euclídea
        cob(i,j) = (dis(i,j) <= 3);  % La respuesta aquí es lógica: 0 si no se cumple, y 1 si sí lo hace
    end
end

puntos_cobertura = sum(cob,2); % Sumo las columnas de cob (como eran ceros o unos, tendré el número de antenas que dan cobertura a cada punto
n_puntos_cobertura = sum(puntos_cobertura > 0); % Sumo aquellos móviles con cobertura

p = n_puntos_cobertura/N; % La proporción de puntos con cobertura
q = 1 - p;
area = p * 20 * 10; % El área de cobertura (el área total es 20*100=200 kms cuadrados)

% Intervalo de confianza [solo alumnos de Informática]

z = norminv(0.975, 0, 1);

int_p = [p - 1.96 * sqrt(p*q/N) p + 1.96 * sqrt(p*q/N)];
int_area = int_p * 20 * 10;

% BONUS: Gráfico de los puntos y las antenas. Los puntos verdes tendrán
% cobertura y los rojos, no.

loc_pun_cob = puntos(puntos_cobertura > 0,:); % Localización de los puntos con cobertura (nótese que no se necesita usar find)
loc_pun_ncob = puntos(puntos_cobertura == 0,:); % Localización de los puntos sin cobertura

scatter(loc_pun_cob(:,1),loc_pun_cob(:,2),'g','filled')
hold on
scatter(loc_pun_ncob(:,1),loc_pun_ncob(:,2),'r','filled')
hold on
scatter(antenas(:,1),antenas(:,2),'k','filled')

%% Apartado b

n_puntos_cobertura_b = sum(puntos_cobertura > 1);

p_b = n_puntos_cobertura_b/N;

%% Apartado c

% Añadiendo cada punto A, B y C en a) y comparando los p resultantes

A = [1 1]; 
B = [10 6];
C = [14 4];

antenas_A = [antenas; A];
antenas_B = [antenas; B];
antenas_C = [antenas; C];

% Para la antena A
cob = zeros(length(puntos), length(antenas_A));
dis = zeros(length(puntos), length(antenas_A));

for i = 1:length(puntos)
    for j = 1:length(antenas_A)
        dis(i,j) = sqrt((puntos(i,1) - antenas_A(j,1)).^2 + (puntos(i,2) - antenas_A(j,2)).^2);
        cob(i,j) = (dis(i,j) <= 3);
    end
end

puntos_cobertura_A = sum(cob,2);
n_puntos_cobertura_A = sum(puntos_cobertura_A > 0);

p_A = n_puntos_cobertura_A/N;

% Para la antena B
cob = zeros(length(puntos), length(antenas_B));
dis = zeros(length(puntos), length(antenas_B));

for i = 1:length(puntos)
    for j = 1:length(antenas_B)
        dis(i,j) = sqrt((puntos(i,1) - antenas_B(j,1)).^2 + (puntos(i,2) - antenas_B(j,2)).^2);
        cob(i,j) = (dis(i,j) <= 3);
    end
end

puntos_cobertura_B = sum(cob,2);
n_puntos_cobertura_B = sum(puntos_cobertura_B > 0);

p_B = n_puntos_cobertura_B/N;

% Para la antena C
cob = zeros(length(puntos), length(antenas_C));
dis = zeros(length(puntos), length(antenas_C));

for i = 1:length(puntos)
    for j = 1:length(antenas_C)
        dis(i,j) = sqrt((puntos(i,1) - antenas_C(j,1)).^2 + (puntos(i,2) - antenas_C(j,2)).^2);
        cob(i,j) = (dis(i,j) <= 3);
    end
end

puntos_cobertura_C = sum(cob,2);
n_puntos_cobertura_C = sum(puntos_cobertura_C > 0);

p_C = n_puntos_cobertura_C/N;

% El mejor punto para la nueva antena es el B = (10,6) 