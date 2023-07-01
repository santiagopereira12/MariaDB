--Distancia
--Consulta en metros
SELECT
ST_Distance_Sphere(
    POINT(`longitud`,`latitud`),
    POINT(`longitud`,`latitud`)
) AS distance;

--Consulta en kilometros
SELECT
ST_Distance_Sphere(
    POINT(`longitud`,`latitud`),
    POINT(`longitud`,`latitud`)
) /1000 AS distance;

--Geolocalizacion con consultas anidadas
SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `station`
        ON `station`.`id` = `location`.`station_id`
        WHERE `station`.`name` = "Ricaurte"
    ),
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `station`
        ON `station`.`id` = `locations`.`stations id`
        WHERE `stations`.`name` = "SENA"
    )
) /1000 AS distance;