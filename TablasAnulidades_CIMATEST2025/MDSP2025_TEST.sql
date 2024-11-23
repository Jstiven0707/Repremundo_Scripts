

CREATE TABLE `MDSP2025` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO (MDOSYYYY)',
  `CLIIDXXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `MDSPARTX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero Art Asignado vuce',
  `MDSPRADX` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Radicado',
  `MDSPVLRS` decimal(18,5) NOT NULL COMMENT 'Valor de la solicitud',
  `MDSPFOBX` decimal(18,5) NOT NULL COMMENT 'Valor Fob',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Operaciones para Solicitud de Pago RIM';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSP2025`
--
ALTER TABLE `MDSP2025`
  ADD PRIMARY KEY (`DOCNROXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`);
COMMIT;