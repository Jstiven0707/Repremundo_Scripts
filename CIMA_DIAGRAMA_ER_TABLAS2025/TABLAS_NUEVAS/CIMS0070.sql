CREATE TABLE `CIMS0070` (
  `OBJIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ',
  `OBJESPID` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ',
  `RESCLAXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ',
  `CARIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OBJETIVO GENERAL Y OBJETIVOS ESPECIFICOS Y RESULTADOS CLAVE VS CARGOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIMS0070`
--
ALTER TABLE `CIMS0070`
  ADD PRIMARY KEY (`OBJIDXXX`,`OBJESPID`,`RESCLAXX`,`CARIDXXX`) COMMENT 'Clave primaria compuesta',
  ADD KEY `idx_OBJIDXXX` (`OBJIDXXX`),
  ADD KEY `idx_OBJESPID` (`OBJESPID`),
  ADD KEY `idx_RESCLAXX` (`RESCLAXX`),
  ADD KEY `idx_CARIDXXX` (`CARIDXXX`);
COMMIT;
