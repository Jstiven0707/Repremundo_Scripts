DROP TABLE IF EXISTS `FOPT2025`;
CREATE TABLE `FOPT2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOTPIDXX` int NOT NULL COMMENT 'ID DEL PROYECTO',
  `FOTOTIPO` enum('','IMPORTACION','EXPORTACION','TRANSITO','REGISTRO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tipo de operacion',
  `FOTTDOCX` enum('','TODAS','AEREO','MARITIMO','TERRESTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MODO DE TRASPORTE',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO',
  `VARIDXXX` int NOT NULL COMMENT 'ID DE LA VARIABLE',
  `VALVARXX` decimal(12,3) NOT NULL COMMENT 'VALOR DE LA VARIABLE',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL Y PROYECTO VS TIPO DE OPERACION' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOPT2025`
--
ALTER TABLE `FOPT2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOTPIDXX`,`FOTOTIPO`) USING BTREE,
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `CONCOBID` (`CONCOBID`) USING BTREE,
  ADD KEY `FORCALID` (`FORCALID`) USING BTREE,
  ADD KEY `VARIDXXX` (`VARIDXXX`) USING BTREE;
COMMIT;
