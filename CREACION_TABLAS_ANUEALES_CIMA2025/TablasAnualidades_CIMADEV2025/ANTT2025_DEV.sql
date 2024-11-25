CREATE TABLE `ANTT2025` (
  `ANTCIDXX` bigint NOT NULL COMMENT 'ID DE LA SOLICITUD DEL ANTICIPO',
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DE DO',
  `ANTTSECX` smallint NOT NULL COMMENT 'Secuencia del detalle',
  `ANTGRVMX` decimal(20,5) NOT NULL COMMENT 'Valor Gravamen',
  `ANTIVAXX` decimal(20,5) NOT NULL COMMENT 'Valor iva',
  `ANTSALVX` decimal(20,5) NOT NULL COMMENT 'Valor Salvaguarda',
  `ANTCOMPX` decimal(20,5) NOT NULL COMMENT 'Valor componsatorio',
  `ANTDUMPX` decimal(20,5) NOT NULL COMMENT 'Valor antidumping',
  `ANTSANCX` decimal(20,5) NOT NULL COMMENT 'Valor sancion',
  `ANTRESCT` decimal(20,5) NOT NULL COMMENT 'Valor rescate',
  `LIMACEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de declaracion',
  `ANTTOTAL` decimal(20,5) NOT NULL COMMENT 'Total del anticipo',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Solicitud de anticipo cliente vs Tributos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANTT2025`
--
ALTER TABLE `ANTT2025`
  ADD PRIMARY KEY (`ANTTSECX`),
  ADD KEY `ANTCIDXX` (`ANTCIDXX`),
  ADD KEY `DOIPEDXX` (`DOCNROXX`),
  ADD KEY `LIMACEXX` (`LIMACEXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ANTT2025`
--
ALTER TABLE `ANTT2025`
  MODIFY `ANTTSECX` smallint NOT NULL AUTO_INCREMENT COMMENT 'Secuencia del detalle', AUTO_INCREMENT=100;
COMMIT;