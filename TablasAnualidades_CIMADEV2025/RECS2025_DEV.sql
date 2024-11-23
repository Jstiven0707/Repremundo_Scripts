-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RECS2024`
--

DROP TABLE IF EXISTS `RECS2024`;
CREATE TABLE `RECS2024` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA()',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la factura(DSVCYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `DESIDXXX` int NOT NULL COMMENT 'ID DEL DESCRIPTOR(CIPO0037)',
  `SECSERXX` int NOT NULL COMMENT 'ID de la secuencia',
  `VALSERXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Valor del descriptor',
  `RECSCOBU` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'UBICACION DEL PRODUCTO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIMIENTO, FACTURA PRODUCTO VS DESCRIPCIONES MINIMAS SERIALES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RECS2024`
--
ALTER TABLE `RECS2024`
  ADD PRIMARY KEY (`TARIDXXX`,`FACIDXXX`,`CLIIDXXX`,`IDPROXXX`,`PROIDXXX`,`DESIDXXX`,`SECSERXX`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `FACIDXXX` (`FACIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `DESIDXXX` (`DESIDXXX`);
COMMIT;