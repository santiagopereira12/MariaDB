
INSERT INTO `lines_stations` (line_id, station_id) VALUES (
    (SELECT `lines`.`id`
    FROM `lines`
    WHERE `lines`.`name` = 7),
    (SELECT `station`.`id`
    FROM `station`
    WHERE `station`.`name` = `Ricaurte`)
);