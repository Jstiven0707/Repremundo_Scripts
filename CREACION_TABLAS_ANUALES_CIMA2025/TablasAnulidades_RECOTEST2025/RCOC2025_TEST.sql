DROP TABLE IF EXISTS `RCOC2025`;
CREATE TABLE `RCOC2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID Tarea ',
  `DATATARC` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json TARC',
  `ESTAIDXX` smallint DEFAULT NULL,
  `ITEMXXXX` int DEFAULT NULL COMMENT 'Cantidad Items Tarea',
  `UNIXXXXX` decimal(18,2) DEFAULT NULL COMMENT 'Unidades Tarea',
  `USRIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Usuario Sincroniza',
  `SYNCXXXX` enum('NO','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización app RECO ',
  `REGSTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `REGSSYNC` timestamp NULL DEFAULT NULL,
  `USRSYNCX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IPSYNCXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REFERERX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `JSONTARID` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json data Reco app ',
  `SYNCPATH` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SYNCJSON` enum('NS','SP','ST') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NS' COMMENT 'Indicador Sincronizacion NS= No sincronizado, SP= sincronizado parcial, ST = Sincronizado Total',
  `REGSYNCJ` timestamp NULL DEFAULT NULL COMMENT 'Fecha de sincronización ',
  `USRSYNJS` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DEPNICKX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `REFEREJS` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `IPSYNCJS` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RECUIMAG` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `SYNCINTF` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización productos interface ',
  `REGSINTF` timestamp NULL DEFAULT NULL,
  `ITEMSYNC` int DEFAULT NULL,
  `SYNCCIMA` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización CIMA ',
  `JSONCIMA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Respuesta json Cima ',
  `REGSCIMA` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Encabezado - RECO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RCOC2025`
--
ALTER TABLE `RCOC2025`
  ADD PRIMARY KEY (`TARIDXXX`);
COMMIT;
