
-- Creación de usuario
CREATE USER 'santiago'@'localhost' IDENTIFIED BY 'santiago123';

-- Eliminar usuario.
DROP USER 'santiago'@'localhost';

-- Privilegios.
GRANT ALL PRIVILEGES ON *.* TO 'santiago'@'localhost';
FLUSH PRIVILEGES;
