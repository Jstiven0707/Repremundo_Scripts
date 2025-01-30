CREATE TABLE `RLPR2025` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO (MDOSYYYY)',
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `RLPRARTX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero Art Asignado vuce',
  `RLPRRADX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Radicado',
  `RLPRVLRS` decimal(18,5) NOT NULL COMMENT 'Valor de la solicitud',
  `RLPRFOBX` decimal(18,5) NOT NULL COMMENT 'Valor Fob',
  `ESTADOTA` enum('PENDIENTE','GENERADA','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'Estado Generacion Tarea',
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
-- Indices de la tabla `RLPR2025`
--
ALTER TABLE `RLPR2025`
  ADD PRIMARY KEY (`DOCNROXX`,`MDREIDRE`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `DOCNROXX_2` (`DOCNROXX`,`MDREIDRE`,`CLIIDXXX`);
COMMIT;



/* `ESTADOTA` enum('PENDIENTE','GENERADA','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'Estado Generacion Tarea',
El default de 'PENDIENTE'  no esta en el lucid 