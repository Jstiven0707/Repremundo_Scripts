DELIMITER $$

CREATE PROCEDURE DefragmentTables()
BEGIN
    -- Declaración de variables
    DECLARE done INT DEFAULT 0;
    DECLARE tableName VARCHAR(255);

 
    DECLARE tableDefragmenter CURSOR FOR 
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'GRM'; 

    -- Manejador de final de cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1; 

    -- Manejador de errores con ROLLBACK
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK; 
        SELECT 'Ocurrió un error. La transacción fue revertida' AS mensaje;
    END;

    -- Iniciar transacción (si es necesario)
    START TRANSACTION;

    -- Abrir cursor
    OPEN tableDefragmenter;

    read_loop: LOOP
        -- Obtener el siguiente nombre de tabla
        FETCH tableDefragmenter INTO tableName;

        -- Salir del loop si no hay más datos
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Aquí puedes agregar tu código para defragmentar cada tabla
        SET @sqlStmt = CONCAT('OPTIMIZE TABLE ', tableName);
        PREPARE stmt FROM @sqlStmt;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END LOOP;

    -- Cerrar cursor
    CLOSE tableDefragmenter;

    -- Confirmar transacción
    COMMIT;
    
END$$

DELIMITER ;





-- ejecutar

CALL DefragmentTables();

-- AUTOMATIZAR 

CREATE EVENT OptimizeEvent
ON SCHEDULE EVERY 1 WEEK  
STARTS TIMESTAMP(CURRENT_DATE + INTERVAL 7 - WEEKDAY(CURRENT_DATE) DAY) + INTERVAL '01:00:00' HOUR_SECOND
DO CALL DefragmentTables();


