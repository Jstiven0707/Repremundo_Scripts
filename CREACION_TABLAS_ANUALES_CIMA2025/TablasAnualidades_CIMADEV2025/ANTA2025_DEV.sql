CREATE TABLE `ANTA2025` (
  `ANTCIDXX` bigint NOT NULL COMMENT 'ID DE LA SOLICITUD DEL ANTICIPO',
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DE DO',
  `ANTASECX` smallint NOT NULL COMMENT 'Secuencia del detalle',
  `ANTFOBXX` decimal(25,5) NOT NULL COMMENT 'Valor fob',
  `ANTFLETE` decimal(20,5) NOT NULL COMMENT 'Valor flete',
  `ANTSEGXX` decimal(20,5) NOT NULL COMMENT 'Valor seguro',
  `ANTOTROS` decimal(20,5) NOT NULL COMMENT 'Valor otros gastos',
  `ANTAJUST` decimal(20,5) NOT NULL COMMENT 'Valor ajuste',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Solicitud de anticipo cliente vs Valor en aduanas USD';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANTA2025`
--
ALTER TABLE `ANTA2025`
  ADD PRIMARY KEY (`ANTASECX`),
  ADD KEY `ANTCIDXX` (`ANTCIDXX`),
  ADD KEY `DOIPEDXX` (`DOCNROXX`),
  ADD KEY `LIMACEXX` (`LIMACEXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ANTA2025`
--
ALTER TABLE `ANTA2025`
  MODIFY `ANTASECX` smallint NOT NULL AUTO_INCREMENT COMMENT 'Secuencia del detalle', AUTO_INCREMENT=100;
COMMIT;