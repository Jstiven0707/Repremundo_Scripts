--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TARI2025`
--

DROP TABLE IF EXISTS `TARI2025`;
CREATE TABLE `TARI2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA',
  `TOKIDXXX` int NOT NULL COMMENT 'id del tipo de KPI',
  `FICINDID` int NOT NULL COMMENT 'ID DEL INDICADOR',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO',
  `LIMINFFX` date NOT NULL COMMENT 'FECHA LIMITE INFERIOR',
  `LIMINFHX` time NOT NULL COMMENT 'HORA LIMITE INFERIOR',
  `LIMSUPFX` date NOT NULL COMMENT 'FECHA LIMITE SUPERIOR',
  `LIMSUPHX` time NOT NULL COMMENT 'HORA LIMITE SUPERIOR',
  `RESESPFX` date NOT NULL COMMENT 'FECHA RESULTADO ESPERADO',
  `RESESPHX` time NOT NULL COMMENT 'HORA RESULTADO ESPERADO',
  `CUMPLEXX` enum('','SI','NO','VENCIDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA EL RESULTADO DEL CALCULO DE INDICADOR',
  `VALORESP` smallint NOT NULL COMMENT 'VALOR ESPERADO',
  `RESOBTEX` decimal(5,1) NOT NULL COMMENT 'VALOR DEL RESULTADO OBTENIDO ',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TAREA VS INDICADORES' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TARI2025`
--
ALTER TABLE `TARI2025`
  ADD PRIMARY KEY (`TARIDXXX`,`TOKIDXXX`,`FICINDID`,`FORCALID`) USING BTREE,
  ADD KEY `TARIDXXX` (`TARIDXXX`) USING BTREE,
  ADD KEY `TOKIDXXX` (`TOKIDXXX`) USING BTREE,
  ADD KEY `FICINDID` (`FICINDID`) USING BTREE,
  ADD KEY `FORCALID` (`FORCALID`) USING BTREE;
COMMIT;