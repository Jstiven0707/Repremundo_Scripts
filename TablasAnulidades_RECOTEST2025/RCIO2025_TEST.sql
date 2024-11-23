CREATE TABLE `RCIO2025` (
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'ID producto',
  `TARIDXXX` bigint DEFAULT NULL COMMENT 'ID Tarea',
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Factura ',
  `DOCNROXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TYPEIMGX` enum('T','P') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Tipo de archivo genericas o productos',
  `URLXXXXX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Url bucket AWS',
  `MAKEDATE` datetime DEFAULT NULL COMMENT 'Fecha toma imagen',
  `SYNCWMXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Generar marca de agua\\n',
  `WMSTAMPX` datetime DEFAULT NULL,
  `SYNCGENIO` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Sincronización Genio\\n',
  `JSONGENIO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci COMMENT 'Respuesta Genio',
  `GENSTAMP` datetime DEFAULT NULL,
  `IMGSTAMP` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Imágenes - Genio';
COMMIT;