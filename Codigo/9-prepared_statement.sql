
DELIMITER //
CREATE PROCEDURE get_line_stations(
    IN line_name VARCHAR(15)
)
BEGIN
    --GUARDAR EN VARIABLE.
    DECLARE line_id BIGINT(20);

    SELECT id
    INTO line_id
    FROM `lines`
    WHERE name = line_name
    COLLATE = utf8mb4_unicode_ci;

    --SEGUNDA FORMA DE ALMACENAR EN UNA VARIABLE
    SET @sql = CONCAT("
        SELECT
            `line_station`.`id` AS relation_id,
            `lines`.`name` AS name_line,
            `stations`.`name` AS station_name
        FROM `line_station`
        INNER JOIN `stations` ON `station`.`id` = `line_station`.`station_id`
        INNER JOIN `lines` ON `lines`.`id` = `line_station`.`line_id`
        WHERE `line_station`.`line_id` = " ,line_id);

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;