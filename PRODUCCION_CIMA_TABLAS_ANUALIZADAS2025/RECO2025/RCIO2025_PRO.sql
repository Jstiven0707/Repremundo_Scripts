

CREATE TABLE `RCIO2025` (
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'ID producto',
  `TARIDXXX` bigint DEFAULT NULL COMMENT 'ID Tarea',
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Id usuario cima',
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Factura id  ',
  `DOCNROXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Numero de Do',
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Cliente id',
  `TYPEIMGX` enum('T','P') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Tipo de archivo producto  o productos',
  `URLXXXXX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Url bucket AWS',
  `MAKEDATE` datetime DEFAULT NULL COMMENT 'Fecha toma imagen',
  `SYNCWMXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'NO' COMMENT 'Flag marca de agua',
  `WMSTAMPX` datetime DEFAULT NULL COMMENT 'Fecha generacion marca de agua',
  `SYNCGENIO` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'NO' COMMENT 'Flan Sincronización Genio',
  `JSONGENIO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT 'Json respuesta Genio',
  `GENSTAMP` datetime DEFAULT NULL COMMENT 'Fecha sincronizacion Genio',
  `IMGSTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creacion registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Imágenes - Genio';
COMMIT;


