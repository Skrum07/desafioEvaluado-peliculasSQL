
--Pregunta 3
select id from peliculas 
where "Pelicula" = 'Titanic';
--La pelicula Titanic tiene un id 2


--Pregunta 4
SELECT id_pelicula, actor
FROM reparto
WHERE id_pelicula = 2;


--Pregunta 5
SELECT COUNT(*) AS numero_peliculas
FROM reparto
WHERE actor = 'Harrison Ford'
--La cantidad de peliculas en las que participa Harrison ford en este ranking es de 8 peliculas


--Pregunta 6
SELECT "Pelicula", "Año estreno"
FROM peliculas
WHERE "Año estreno" BETWEEN 1990 AND 1999
ORDER BY "Pelicula" ASC;


--Pregunta 7
SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo
FROM peliculas;


--Pregunta 8
SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo
FROM peliculas
WHERE LENGTH("Pelicula") = (SELECT MAX(LENGTH("Pelicula")) FROM peliculas);
--La respuesta es 52, siendo el nombre del titulo de la pelicula "Sweeney Todd: El barbero diabólico de la calle Fleet"