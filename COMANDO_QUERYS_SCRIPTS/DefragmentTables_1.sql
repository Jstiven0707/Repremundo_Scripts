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

    -- Declare a handler for the end of the cursor
    DECLARE done INT DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Declare a handler for SQL exceptions
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SELECT 'An error occurred. Transaction rolled back.';
    END;

    -- Start a transaction
    START TRANSACTION;

    -- Open the cursor
    OPEN tableDefragmenter;

    -- Loop through the result set
    read_loop: LOOP
        FETCH tableDefragmenter INTO tableName;

        -- Check if we have reached the end of the result set
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- Prepare and execute the ALTER TABLE statement
        SET @alterStmt = CONCAT('ALTER TABLE ', tableName, ' ENGINE=InnoDB;');
        PREPARE stmt FROM @alterStmt;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END LOOP;

    -- Close the cursor
    CLOSE tableDefragmenter;

    -- Commit the transaction
    COMMIT;
END //

DELIMITER ;
