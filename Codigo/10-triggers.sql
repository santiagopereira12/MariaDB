
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.update_at = NOW();

---------TRIGGER COMPUESTO-------------

DELIMITER//
CREATE TRIGGER update_active_drivers
AFTER UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

    IF NEW.status = 1 THEN
        INSERT INTO `active_drivers` (driver_id) VALUES (NEW.id);
    ELSE
        DELETE FROM `active_drivers` WHERE driver_id = NEW.id;
    END IF;    

END; //
DELIMITER ;