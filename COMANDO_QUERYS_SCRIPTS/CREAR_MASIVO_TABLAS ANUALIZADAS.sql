SELECT 
  CONCAT(
    'CREATE TABLE `', 
    REPLACE(TABLE_NAME, '2025', '2026'), 
    '` LIKE `', 
    TABLE_NAME, 
    '`;'
  ) AS create_script
FROM 
  information_schema.TABLES
WHERE 
  TABLE_SCHEMA = 'tu_base_de_datos'
  AND TABLE_NAME LIKE '%2025%';
