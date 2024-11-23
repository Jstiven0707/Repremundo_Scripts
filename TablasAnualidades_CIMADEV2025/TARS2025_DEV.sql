--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TARS2025`
--

DROP TABLE IF EXISTS `TARS2025`;
CREATE TABLE `TARS2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA',
  `TARSEGID` int NOT NULL COMMENT 'ID DEL SEGUIMIENTO',
  `SEGDESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL SEGUIMIENTO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TAREA VS SEGUIMIENTOS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TARS2025`
--
ALTER TABLE `TARS2025`
  ADD PRIMARY KEY (`TARSEGID`,`TARIDXXX`) USING BTREE,
  ADD KEY `TARIDXXX` (`TARIDXXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TARS2025`
--
ALTER TABLE `TARS2025`
  MODIFY `TARSEGID` int NOT NULL AUTO_INCREMENT COMMENT 'ID DEL SEGUIMIENTO';
COMMIT;