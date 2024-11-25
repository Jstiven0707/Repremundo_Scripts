--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RECN2025`
--

DROP TABLE IF EXISTS `RECN2025`;
CREATE TABLE `RECN2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYYY)',
  `RECNSEID` int NOT NULL COMMENT 'Secuencia del item',
  `RECNOBSX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'observaciones',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIMIENTO VS PRODUCTOS NUEVOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RECN2025`
--
ALTER TABLE `RECN2025`
  ADD PRIMARY KEY (`TARIDXXX`,`RECNSEID`),
  ADD KEY `TARIDXXX` (`TARIDXXX`);
COMMIT;
