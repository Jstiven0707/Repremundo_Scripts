--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RENU2025`
--

DROP TABLE IF EXISTS `RENU2025`;
CREATE TABLE `RENU2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYY)',
  `RECNSEID` int NOT NULL COMMENT 'SECUENCIA DEL ITEM',
  `RECUCOBU` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'UBICACION DEL PRODUCTO',
  `RECUNUMR` decimal(18,5) NOT NULL COMMENT 'CANTIDAD RECONOCIMIENTO',
  `RECAUTMA` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'AUTORIZADO PARA RECONOCIMIENTO MANUAL',
  `RECUAVER` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI APLICA AVERIAS',
  `RECOBSAV` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LAS AVERIAS',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIENTO FACTURA, PRODUCTOS NUEVOS VS UBICACIONES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RENU2025`
--
ALTER TABLE `RENU2025`
  ADD PRIMARY KEY (`TARIDXXX`,`RECNSEID`,`RECUCOBU`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `RECNSEID` (`RECNSEID`);
COMMIT;