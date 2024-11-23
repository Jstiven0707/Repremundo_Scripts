--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RLDD2025`
--


CREATE TABLE `RLDD2025` (
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA FACTURA (DSVCYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `DESIDXXX` int NOT NULL COMMENT 'ID DEL DESCRIPTOR (CIPO0171)',
  `PRDESVAX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPTOR',
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='REGISTRO O LICENCIA, PRODUCTO VS DESCRIPTORES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLDD2025`
--
ALTER TABLE `RLDD2025`
  ADD PRIMARY KEY (`PROIDXXX`,`CLIIDXXX`,`FACIDXXX`,`IDPROXXX`,`DESIDXXX`,`MDREIDRE`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `DESIDXXX` (`DESIDXXX`),
  ADD KEY `MDREIDRE` (`MDREIDRE`);
COMMIT;