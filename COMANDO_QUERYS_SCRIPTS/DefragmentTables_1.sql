DELIMITER //

CREATE PROCEDURE DefragmentTables()
BEGIN
    DECLARE tableName VARCHAR(500);
    DECLARE alterStmt VARCHAR(600);

    -- Declare a cursor
    DECLARE tableDefragmenter CURSOR FOR 
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'GRM'
    LIMIT 10;

    
    DECLARE done INT DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SELECT 'An error occurred. Transaction rolled back.';
    END;

 
    START TRANSACTION;

    -- Open the cursor
    OPEN tableDefragmenter;


    read_loop: LOOP
        FETCH tableDefragmenter INTO tableName;

        
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

      
        SET @alterStmt = CONCAT('ALTER TABLE ', tableName, ' ENGINE=InnoDB;');
        PREPARE stmt FROM @alterStmt;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END LOOP;

   
    CLOSE tableDefragmenter;

   
    COMMIT;
END //

DELIMITER ;


-- EJECUTAR CURSOR 

CALL DefragmentTables();



-- CREACION DE EVENTO 

CREATE EVENT OptimizeEvent
ON SCHEDULE EVERY 1 WEEK  
STARTS TIMESTAMP(CURRENT_DATE + INTERVAL 7 - WEEKDAY(CURRENT_DATE) DAY) 
+ INTERVAL '01:00:00' HOUR_SECOND
DO CALL DefragmentTables();