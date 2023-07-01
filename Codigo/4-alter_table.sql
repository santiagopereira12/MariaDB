
ALTER TABLE `rutas`
ADD CONSTRAINT `id_portales`
FOREIGN KEY (`id_portales`)
REFERENCES `portales` (`id`);

ALTER TABLE `estaciones`
ADD CONSTRAINT `id_rutas`
FOREIGN KEY (`id_rutas`)
REFERENCES `rutas` (`id`);

ALTER TABLE `ubicaciones`
ADD CONSTRAINT `id_station`
FOREIGN KEY (`id_station`)
REFERENCES `estaciones` (`id`);

ALTER TABLE `conductor_activo`
ADD CONSTRAINT `conductor_id`
FOREIGN KEY (`conductor_id`)
REFERENCES `conductor` (`id`);

ALTER TABLE `portales` 
ADD `refencia` VARCHAR(5) NOT NULL;

ALTER TABLE `portales`
RENAME COLUMN `refencia` TO `referencia`;