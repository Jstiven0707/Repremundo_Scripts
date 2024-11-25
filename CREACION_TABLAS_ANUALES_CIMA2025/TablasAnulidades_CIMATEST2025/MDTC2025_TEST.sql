--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDTC2025`
--

DROP TABLE IF EXISTS `MDTC2025`;
CREATE TABLE `MDTC2025` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(2,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO (CIPF0030)',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO (CIPF0037)',
  `FOTPIDXX` int NOT NULL COMMENT 'Id del proyecto',
  `MDTCVLRX` decimal(18,5) NOT NULL COMMENT 'Valor de la Tarifa',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','EN PROCESO','ERROR','FINALIZADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del ROBOT',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS TARIFAS COMERCIALES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTC2025`
--
ALTER TABLE `MDTC2025`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`FOCOIDXX`,`FOCOVERX`,`CONCOBID`,`FORCALID`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`),
  ADD KEY `FOCOVERX` (`FOCOVERX`),
  ADD KEY `CONCOBID` (`CONCOBID`),
  ADD KEY `FORCALID` (`FORCALID`),
  ADD KEY `FOTPIDXX` (`FOTPIDXX`);
COMMIT;