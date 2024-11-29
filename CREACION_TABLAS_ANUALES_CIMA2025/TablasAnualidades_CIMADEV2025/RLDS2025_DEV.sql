
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RLDS2025`
--

CREATE TABLE `RLDS2025` (
  `MDREIDRE` int NOT NULL COMMENT 'SECUENCIA DEL REGISTRO O LICENCIA',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `CLIIDXXX` varchar(20) NOT NULL COMMENT 'NIT DEL CLIENTE',
  `IDPROXXX` varchar(10) NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `SOLIIDXX` int NOT NULL COMMENT 'ID DE LA SOLICITUD(CIPO0160)',
  `SELECIDX` int NOT NULL COMMENT 'SECUENCIA DE LA SELECCION',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='VUCE, PRODUCTO VS SOLICITUDES ESPECIALES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLDS2025`
--
ALTER TABLE `RLDS2025`
  ADD PRIMARY KEY (`MDREIDRE`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`,`SOLIIDXX`,`SELECIDX`),
  ADD KEY `MDREIDRE` (`MDREIDRE`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `SOLIIDXX` (`SOLIIDXX`),
  ADD KEY `SELECIDX` (`SELECIDX`);
COMMIT;


