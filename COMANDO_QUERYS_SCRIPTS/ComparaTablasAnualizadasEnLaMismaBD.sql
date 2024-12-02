-- Comparar las tablas de 2024 con las de 2025 y mostrar las que faltan en 2025
SELECT t2024.TABLE_NAME AS Tablas_Faltantes_2025
FROM (
  -- Obtener todas las tablas que contienen '2024' en el nombre
  SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = 'WMS'
  AND TABLE_NAME LIKE '%2024'
) t2024
LEFT JOIN (
  -- Obtener todas las tablas que contienen '2025' en el nombre
  SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = 'WMS'
  AND TABLE_NAME LIKE '%2025'
) t2025
-- Realizamos la comparación de tablas: si no hay tabla de 2025 con el mismo nombre base, la de 2024 falta
ON SUBSTRING(t2024.TABLE_NAME, 1, LENGTH(t2024.TABLE_NAME)-4) = SUBSTRING(t2025.TABLE_NAME, 1, LENGTH(t2025.TABLE_NAME)-4)
WHERE t2025.TABLE_NAME IS NULL;
