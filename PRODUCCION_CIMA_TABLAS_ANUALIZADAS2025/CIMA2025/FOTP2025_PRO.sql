
CREATE TABLE `FOTP2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO ',
  `FOTPIDXX` smallint NOT NULL COMMENT 'ID DEL PROYECTO',
  `FOTTDOCX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Modos de transporte separados por ~',
  `SUCIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Sucursales separadas por ~',
  `CONCOBID` int NOT NULL COMMENT 'Id del concepto de cobro',
  `FORCALID` int NOT NULL COMMENT 'Id de la formula de calculo',
  `VARIDXXX` int NOT NULL COMMENT 'Id de la variable',
  `CAMPIDSX` json NOT NULL COMMENT 'Campos parametrizables',
  `RANGOSXX` json NOT NULL COMMENT 'Rangos',
  `FOTCONPX` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'APLICA CONCEPTO PERSONALIZADO',
  `FOTDECON` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL CONCEPTO PERSONALIZADO',
  `FOTOBSVX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LA TARIFA',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL VS TARIFAS POR PROYECTO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOTP2025`
--
ALTER TABLE `FOTP2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`,`FOTPIDXX`,`FOTTDOCX`,`SUCIDXXX`,`CONCOBID`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `FOCOVERX` (`FOCOVERX`),
  ADD KEY `CONCOBID` (`CONCOBID`),
  ADD KEY `FORCALID` (`FORCALID`),
  ADD KEY `VARIDXXX` (`VARIDXXX`);
COMMIT;

