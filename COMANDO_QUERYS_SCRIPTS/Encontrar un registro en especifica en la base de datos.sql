CREATE TABLE IF NOT EXISTS resultados_busqueda (
    tabla VARCHAR(100),
    columna VARCHAR(100),
    valor_encontrado VARCHAR(255)
);





DELIMITER $$
CREATE PROCEDURE buscar_valor_en_tabla(
    IN p_db_name VARCHAR(64),
    IN p_table_name VARCHAR(64),
    IN p_valor VARCHAR(255)
)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE col_name VARCHAR(64);
    DECLARE cur1 CURSOR FOR
        SELECT COLUMN_NAME
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = p_db_name
          AND TABLE_NAME = p_table_name
          AND DATA_TYPE IN ('varchar','char','text','int','bigint','decimal');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur1;
    read_loop: LOOP
        FETCH cur1 INTO col_name;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET @sql = CONCAT(
            'INSERT INTO resultados_busqueda(tabla, columna, valor_encontrado)
             SELECT ''', p_table_name, ''' AS tabla, ''', col_name, ''' AS columna, ',
             col_name, ' AS valor_encontrado
             FROM ', p_db_name, '.', p_table_name,
             ' WHERE ', col_name, ' = ''', p_valor, ''''
        );
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END LOOP;

    CLOSE cur1;
END$$
DELIMITER ;


CALL buscar_valor_en_tabla('CIMA', 'nombre_de_tu_tabla', 'EL_VALOR_A_BUSCAR');
