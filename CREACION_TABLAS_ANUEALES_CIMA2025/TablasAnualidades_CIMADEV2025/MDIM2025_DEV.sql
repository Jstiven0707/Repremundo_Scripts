DROP TABLE IF EXISTS `MDIM2025`;
CREATE TABLE `MDIM2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO (MDOSYYYY)',
  `MDIMTIAN` enum('','LEGAL','VOLUNTARIA') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'TIPO DE ANTICIPADA (MDOSYYYY.DOCNFAFL)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='OPERACION VS DATOS DE IMPORTACION';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDIM2025`
--
ALTER TABLE `MDIM2025`
  ADD PRIMARY KEY (`DOCNROXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`);
COMMIT;
