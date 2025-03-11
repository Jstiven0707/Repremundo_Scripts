CREATE TABLE `DOCC2023` (
  `IDARCHXX` bigint NOT NULL COMMENT 'paquete documental vs partes',
  `EMPNITXX` varchar(20) NOT NULL,
  `AREAIDXX` int NOT NULL COMMENT 'ID del area',
  `SERIEIDX` int NOT NULL COMMENT 'ID de la serie',
  `TIPOIDXX` int NOT NULL COMMENT 'ID del tipo',
  `JSONMETX` json NOT NULL COMMENT 'Metadatos diligenciados',
  `DOCNROXX` varchar(200) GENERATED ALWAYS AS (replace(replace(replace(ifnull(json_unquote(json_extract(`JSONMETX`,_utf8mb4'$.DOCNROXX')),_utf8mb4''),_utf8mb4'["',_utf8mb4''),_utf8mb4'"]',_utf8mb4''),_utf8mb4'"',_utf8mb4'')) VIRTUAL NOT NULL COMMENT 'Numeros de DO',
  `PATHFILX` tinytext NOT NULL,
  `TYPEXXXX` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Mimetype del Archivo',
  `NUMPAGXX` int NOT NULL COMMENT 'Numero de Paginas',
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
-- Indices de la tabla `DOCC2023`
--
ALTER TABLE `DOCC2023`
  ADD PRIMARY KEY (`IDARCHXX`),
  ADD KEY `EMPNITXX` (`EMPNITXX`),
  ADD KEY `AREAIDXX` (`AREAIDXX`),
  ADD KEY `SERIEIDX` (`SERIEIDX`),
  ADD KEY `TIPOIDXX` (`TIPOIDXX`),
  ADD KEY `EMPNITXX_2` (`EMPNITXX`,`AREAIDXX`,`SERIEIDX`,`TIPOIDXX`),
  ADD KEY `IDARCHXX` (`IDARCHXX`),
  ADD KEY `TYPEXXXX` (`TYPEXXXX`),
  ADD KEY `IDARCHXX_2` (`IDARCHXX`,`EMPNITXX`,`AREAIDXX`,`SERIEIDX`,`TIPOIDXX`,`DOCNROXX`,`TYPEXXXX`),
  ADD KEY `IDARCHXX_3` (`IDARCHXX`,`EMPNITXX`,`AREAIDXX`,`SERIEIDX`,`TIPOIDXX`,`DOCNROXX`,`TYPEXXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `DOCC2023`
--
ALTER TABLE `DOCC2023`
  MODIFY `IDARCHXX` bigint NOT NULL AUTO_INCREMENT COMMENT 'paquete documental vs partes';
COMMIT;
