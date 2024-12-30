

CREATE TABLE `DOCC2025` (
  `IDARCHXX` bigint NOT NULL COMMENT 'ID del paquete',
  `EMPNITXX` varchar(20) NOT NULL,
  `AREAIDXX` int NOT NULL COMMENT 'ID del area',
  `SERIEIDX` int NOT NULL COMMENT 'ID de la serie',
  `TIPOIDXX` int NOT NULL COMMENT 'ID del tipo',
  `JSONMETX` json NOT NULL COMMENT 'Metadatos diligenciados',
  `PATHFILX` tinytext NOT NULL,
  `TYPEXXXX` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Mimetype del Archivo',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','INCOMPLETO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Paquete tipificados gestor documental';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOCC2025`
--
ALTER TABLE `DOCC2025`
  ADD PRIMARY KEY (`IDARCHXX`),
  ADD KEY `EMPNITXX` (`EMPNITXX`),
  ADD KEY `AREAIDXX` (`AREAIDXX`),
  ADD KEY `SERIEIDX` (`SERIEIDX`),
  ADD KEY `TIPOIDXX` (`TIPOIDXX`),
  ADD KEY `EMPNITXX_2` (`EMPNITXX`,`AREAIDXX`,`SERIEIDX`,`TIPOIDXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `DOCC2025`
--
ALTER TABLE `DOCC2025`
  MODIFY `IDARCHXX` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID del paquete';
COMMIT;


