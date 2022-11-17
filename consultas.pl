%hechos pelis
ve_pelicula(roberto, suspenso).
ve_pelicula(jaanai, suspenso).
ve_pelicula(abimael, suspenso).
ve_pelicula(leonardo, romance).
ve_pelicula(miguel, terror).
% hechos musica
escucha_musica(abelino, reggae).
escucha_musica(jose, rock).
escucha_musica(izmucaneth, reggae).
escucha_musica(rolando, rock).
escucha_musica(maldonado, regional).
% hechos de consumo mientras ven pelis
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).
% hechos de si tiene tiempo tiempo libre
tiene_tiempo_libre(roberto,si).
tiene_tiempo_libre(jaanai,no).
tiene_tiempo_libre(abimael,si).
tiene_tiempo_libre(leonardo,si).
tiene_tiempo_libre(miguel,si).
% hechos que dicta si usa audifonos al ver pelicula
usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).
% hechos de si escuchan musica con audifonos.
tiene_audifonos(abelino,no).
tiene_audifonos(jose,si).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).
% hechos de si tienen netflix
tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).
% hechos de si tienen spotify premium
tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,no).

% reglas
% 1 regla que indica quiénes prefieren ver películas
ve_pelicula(x,f(suspenso,romance,terror)).

% 2 regla que indica quienes escuchan musica
escucha_musica(x,f(reggae,rock,regional)).

% 3 regla que indica alguien que ve películas de suspenso, disfruta verlas con palomitas, tiene una cuenta de Netflix y 
%tiempo libre, tiene una tarde perfecta
tarde_perfecta(X):-ve_pelicula(X,suspenso),consume(X,palomitas),tiene_netflix(X,si),tiene_tiempo_libre(X,si).

% 4.- regla que indica alguien que ve películas consumiendo una ensalada, tiene una vida saludable.
vida_saludable(X):- ve_pelicula(X,_), consume(X,ensalada).

% 5.- regla que indica alguien que escuche regional, tiene audifonos y la aplicacionn de spotify, disfruta de camino a casa.
disfruta_camino(X) :- escucha_musica(X,rock), tiene_audifonos(X,si), tiene_spotify(X,si).

% 6.- regla que indica alguien es feliz si ve películas consumiendo maruchan, tiempo libre y Netflix.
es_feliz(X):-ve_pelicula(X,_),consume(X,maruchan),tiene_tiempo_libre(X,si),tiene_netflix(X,si).

% 7.- regla que indica únicamente pueden ser amigos quienes tienen los mismos gustos (películas, botana).
son_amigos(X):-ve_pelicula(x,)