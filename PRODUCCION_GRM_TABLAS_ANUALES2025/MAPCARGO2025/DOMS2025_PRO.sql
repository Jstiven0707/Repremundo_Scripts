

CREATE TABLE `DOMS2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `OPOPEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'operacion',
  `MAREGFEC` date NOT NULL COMMENT 'fecha creacion mapcargo',
  `NAMPORTO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'puerto origen',
  `NAMPORTD` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'puerto destino',
  `FECCITCO` date DEFAULT NULL COMMENT 'fecha cita de cargue',
  `FECDESCO` date DEFAULT NULL COMMENT 'fecha de descargue',
  `FECDEVCO` date DEFAULT NULL COMMENT 'Fecha devolucion e contenedor',
  `SHPREXXX` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Prefijo',
  `CFDISCAR` date DEFAULT NULL COMMENT 'Disponiblia de la carga',
  `CFFEENGE` date DEFAULT NULL COMMENT 'Fecha entrega general',
  `CFFECRET` date DEFAULT NULL COMMENT 'Fecha retiro vacio',
  `CFFECASE` date DEFAULT NULL COMMENT 'Fecha de carga',
  `CFFEDESE` date DEFAULT NULL COMMENT 'Fecha descargue SE',
  `CFINZOPR` date DEFAULT NULL COMMENT 'Fecha ingreso zona primaria',
  `ESTMAPXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ultimo evento',
  `CFOPATDX` date DEFAULT NULL COMMENT 'Fecha real de salida confirmada SE',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `REGUSRMX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cruce de data map siaco' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOMS2025`
--
ALTER TABLE `DOMS2025`
  ADD PRIMARY KEY (`DOCNROXX`,`DOCSUFXX`);
COMMIT;

