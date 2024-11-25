CREATE TABLE `RCCO2025` (
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Id producto',
  `TARIDXXX` bigint DEFAULT NULL COMMENT 'ID tarea',
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'ID factura',
  `CODEXXXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Código serial',
  `CONTAIID` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Ubicación ',
  `GROUPIDX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Grupo serial',
  `COUNTXXX` int DEFAULT NULL COMMENT 'Valor contado',
  `COUNTSXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci COMMENT 'Json scaneo',
  `REGSTAMP` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Conteo,escaneo - Tarea ';
COMMIT;