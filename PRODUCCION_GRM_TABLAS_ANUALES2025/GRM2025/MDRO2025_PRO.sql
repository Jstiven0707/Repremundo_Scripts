
CREATE TABLE `MDRO2025` (
  `CRONIDXX` int(11) NOT NULL COMMENT 'ID DEL CRON',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DEL DO',
  `OBSROBTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'observacion del robot',
  `CONTERRX` int(1) NOT NULL DEFAULT '0' COMMENT 'Contador de intentos del Robot',
  `MDROESTG` enum('ACTIVO','MIGRADO','NO APLICA','ERROR') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO APLICA' COMMENT 'Estado para la subida de genio',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','PROCESO','FINALIZADO','ERROR','DESCARGADO','RADICADO','ACEPTACION','AUTOADHESIVO','DOC SOPORTE','LIQUIDAR','CAMVISIO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='AGENDAMIENTO DE ROBOTS VS OPERACION' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDRO2025`
--
ALTER TABLE `MDRO2025`
  ADD PRIMARY KEY (`CRONIDXX`,`DOCNROXX`) USING BTREE;
COMMIT;

