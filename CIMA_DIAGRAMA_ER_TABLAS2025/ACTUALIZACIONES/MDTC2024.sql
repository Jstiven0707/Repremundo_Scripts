CREATE TABLE `MDTC2024` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO (MDOSYYYY)',
  `CLIIDXXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(2,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `CONCOBID` int NOT NULL COMMENT 'CONCEPTO DE COBRO (CIPF0030)',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO',
  `FOTPIDXX` int NOT NULL COMMENT ' id del proyecto',
  `MDTCVLRX` decimal(18,5) NOT NULL COMMENT 'Valor de la Tarifa',
  `FOCOANIO` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ANO DE LA OFERTA ',
  `CONCPERX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Texto concepto de cobro perzonalizado',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTC2024`
--
ALTER TABLE `MDTC2024`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`FOCOIDXX`,`FOCOVERX`,`CONCOBID`,`FORCALID`),
  ADD KEY `IDX_DOCNROXX` (`DOCNROXX`),
  ADD KEY `IDX_CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDX_FOCOIDXX` (`FOCOIDXX`),
  ADD KEY `IDX_FOCOVERX` (`FOCOVERX`),
  ADD KEY `IDX_CONCOBID` (`CONCOBID`),
  ADD KEY `IDX_FORCALID` (`FORCALID`),
  ADD KEY `IDX_FOTPIDXX` (`FOTPIDXX`);
COMMIT;


ALTER TABLE `MDTC2024`
ADD COLUMN CONCPERX TINYTEXT NOT NULL COMMENT 'TEXTO CONCEPTO DE COBRO PERSENALIZADO' AFTER FOCOANIO;


ALTER TABLE `MDTC2024`
ADD COLUMN MDTCINTC ENUM('','SI','NO')NOT NULL COMMENT'INDICA SI YA SE ANALIZO PARA EL CALCULO' AFTER CONCPERX;
