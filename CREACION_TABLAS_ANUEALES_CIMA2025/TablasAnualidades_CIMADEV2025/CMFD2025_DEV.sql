DROP TABLE IF EXISTS `CMFD2025`;
CREATE TABLE `CMFD2025` (
  `IDCOMXXX` enum('','R','P','F','G','C','L') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL COMPROBANTE',
  `COMPREXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PREFIJO DEL COMPROBANTE',
  `CNSCOMXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante',
  `CNSCOM2X` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONSECUTIVO DEL COMPROBANTE 2',
  `CNSCOMDS` int NOT NULL COMMENT 'ID DE LA SENCUENCIA DEL DETALLE',
  `PUCIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la cuenta PUC',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `TERIDXXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Id del Tercero',
  `TERID2XX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del Tercero 2',
  `CONVLRDE` decimal(12,2) NOT NULL COMMENT 'Valor Debito',
  `CONVLRCR` decimal(12,2) NOT NULL COMMENT 'Valor Credito',
  `COMPRECR` enum('','R','P','F','G','C','L') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DOCUMENTO CRUCE',
  `COMPREDC` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PREFIJO DEL COMPROBANTE CRUCE',
  `COMSECRX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante cruce',
  `COMSECR2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante cruce 2',
  `CMFDVRRE` decimal(12,2) NOT NULL COMMENT 'Valor base Retencion',
  `CMFDVRIV` decimal(12,2) NOT NULL COMMENT 'Iva Mayor valor',
  `CONIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del concepto Contable',
  `CCOIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CENTRO DE COSTO',
  `SUBCCIDX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'subcentro de costo',
  `CNSDESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACION DEL COMPROBANTE',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='movimiento financiero detalle' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CMFD2025`
--
ALTER TABLE `CMFD2025`
  ADD PRIMARY KEY (`IDCOMXXX`,`COMPREXX`,`CNSCOMXX`,`CNSCOMDS`,`CNSCOM2X`) USING BTREE,
  ADD KEY `IDCOMXXX` (`IDCOMXXX`) USING BTREE,
  ADD KEY `COMPREXX` (`COMPREXX`) USING BTREE,
  ADD KEY `CNSCOMXX` (`CNSCOMXX`) USING BTREE,
  ADD KEY `CNSCOM2X` (`CNSCOM2X`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE,
  ADD KEY `TERIDXXX` (`TERIDXXX`) USING BTREE,
  ADD KEY `TERID2XX` (`TERID2XX`) USING BTREE,
  ADD KEY `PUCIDXXX` (`PUCIDXXX`);
COMMIT;