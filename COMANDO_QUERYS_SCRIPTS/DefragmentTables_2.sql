DELIMITER //

CREATE PROCEDURE DefragmentTables()
BEGIN
    -- Declarar variables
    DECLARE tableName VARCHAR(100); -- Variable para almacenar el nombre de las tablas
    DECLARE alterStmt VARCHAR(600); -- Variable para construir las sentencias ALTER TABLE

    -- Declarar un cursor
    DECLARE tableDefragmenter CURSOR FOR 
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'GRM' -- Filtra tablas del esquema 'rentalapp'
    LIMIT 10; -- Selecciona las primeras 10 tablas

    -- Declarar manejador para el final del cursor
    DECLARE done INT DEFAULT 0; -- Bandera para identificar el final de los resultados
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1; -- Marca cuando el cursor llega al final

    -- Declarar manejador para excepciones SQL
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK; -- Deshace los cambios si ocurre un error
        SELECT 'Ocurrió un error. La transacción fue revertida'; -- Muestra un mensaje de error
    END;

    -- Iniciar una transacción
    START TRANSACTION;

    -- Abrir el cursor
    OPEN tableDefragmenter;

    -- Bucle para recorrer las tablas seleccionadas por el cursor
    read_loop: LOOP
        FETCH tableDefragmenter INTO tableName; -- Obtiene el nombre de la siguiente tabla

        -- Verificar si se llegó al final del cursor
        IF done = 1 THEN
            LEAVE read_loop; -- Sale del bucle si no hay más resultados
        END IF;

        -- Construir y ejecutar la sentencia ALTER TABLE
        SET @alterStmt = CONCAT('ALTER TABLE ', tableName, ' ENGINE=InnoDB;'); -- Cambia el motor a InnoDB
        PREPARE stmt FROM @alterStmt; -- Prepara la sentencia para ejecutarla
        EXECUTE stmt; -- Ejecuta la sentencia preparada
        DEALLOCATE PREPARE stmt; -- Libera los recursos de la sentencia preparada

    END LOOP;

    -- Cerrar el cursor
    CLOSE tableDefragmenter;

    -- Confirmar la transacción
    COMMIT;
END //

DELIMITER ;
