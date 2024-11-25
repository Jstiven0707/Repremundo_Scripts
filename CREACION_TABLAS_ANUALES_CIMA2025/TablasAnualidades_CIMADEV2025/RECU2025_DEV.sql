--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RECU2025`
--

DROP TABLE IF EXISTS `RECU2025`;
CREATE TABLE `RECU2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA()',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la factura(DSVCYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `RECUCOBU` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ubicacion del producto',
  `RECUNUMR` decimal(20,5) NOT NULL COMMENT 'CANTIDAD RECONOCIMIENTO',
  `RECAUTMA` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'AUTORIZADO PARA RECONOCIMIENTO MANUAL',
  `RECUAVER` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI APLICA AVERIAS',
  `RECOBSAV` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LAS AVERIAS',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIMIENTO, FACTURA PRODUCTO VS UBICACIONES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RECU2025`
--
ALTER TABLE `RECU2025`
  ADD PRIMARY KEY (`TARIDXXX`,`FACIDXXX`,`CLIIDXXX`,`IDPROXXX`,`PROIDXXX`,`RECUCOBU`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `FACIDXXX` (`FACIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`);
COMMIT;