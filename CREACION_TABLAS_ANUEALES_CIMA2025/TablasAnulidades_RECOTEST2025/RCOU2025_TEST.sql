DROP TABLE IF EXISTS `RCOU2025`;
CREATE TABLE `RCOU2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID Tarea',
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Factura',
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Producto',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `UNIXXXXX` decimal(18,2) DEFAULT NULL COMMENT 'Unidades',
  `SYNCXXXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO',
  `REGSTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `RECSCOBU` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRODESFA` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `RECUNUMR` decimal(18,5) DEFAULT '0.00000',
  `MEDIAPRO` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json Image Producto',
  `ISNEWXXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT 'NO',
  `SERISGRO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci,
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `JSONPROD` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json captura producto',
  `SYNCTAMP` timestamp NULL DEFAULT NULL,
  `ISSYNCXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Unidades - Tarea';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RCOU2025`
--
ALTER TABLE `RCOU2025`
  ADD PRIMARY KEY (`TARIDXXX`,`FACIDXXX`,`PROIDXXX`);
COMMIT;