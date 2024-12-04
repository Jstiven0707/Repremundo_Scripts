-- MODIFY COLUM 
ALTER TABLE CIPO0152
MODIFY COLUMN `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
MODIFY COLUMN `DESIDXXX` int(3) NOT NULL COMMENT 'ID DEL DESCRIPTOR (CIPO0037)',
MODIFY COLUMN `PREIDXXX` smallint(3) NOT NULL COMMENT 'ID DE LA PRECONDICION';
-- Indicice agregado 

ALTER TABLE CIPO0152
ADD KEY idx_PREIDXXX (`PREIDXXX`);

-- drop index 
ALTER TABLE `CIPO0152`
DROP INDEX `PROIDXXX_2`;

-- Modificar clave primaria compuesta

ALTER TABLE `CIPO0152`
  DROP PRIMARY KEY;
  
  ALTER TABLE `CIPO0152`
  ADD PRIMARY KEY (`PROIDXXX`, `CLIIDXXX`, `IDPROXXX`, `DESIDXXX`, `PREIDXXX`);