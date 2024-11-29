WITH TablasDEV AS (
    SELECT TABLE_NAME AS TableName
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_SCHEMA = 'CIMADEV' 
      AND TABLE_NAME LIKE '%2025%'
),
TablasTEST AS (
    SELECT TABLE_NAME AS TableName
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_SCHEMA = 'CIMATEST' 
      AND TABLE_NAME LIKE '%2025%'
)

-- Comparar tablas que están en TablasDEV pero no en TablasTEST
SELECT 
    'FALTA EN CIMATEST' AS Comparativo,
    TablasDEV.TableName
FROM TablasDEV
LEFT JOIN TablasTEST ON TablasDEV.TableName = TablasTEST.TableName
WHERE TablasTEST.TableName IS NULL

UNION 

-- Comparar tablas que están en TablasTEST pero no en TablasDEV
SELECT 
    'FALTA EN CIMADEV' AS Comparativo,
    TablasTEST.TableName
FROM TablasTEST
LEFT JOIN TablasDEV ON TablasTEST.TableName = TablasDEV.TableName
WHERE TablasDEV.TableName IS NULL;
