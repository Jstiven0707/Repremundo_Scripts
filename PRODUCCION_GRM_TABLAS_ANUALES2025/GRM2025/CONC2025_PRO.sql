

CREATE TABLE `CONC2025` (
  `NUMPOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Poliza',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `NUMPOLAN` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la poliza anterior',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `AREAIDXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area',
  `POLTIPID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tipo Poliza',
  `FECINIVI` date NOT NULL COMMENT 'Fecha Inicio Vigencia',
  `FECFINVI` date NOT NULL COMMENT 'Fecha Fin Vigencia',
  `VLRPRIXX` decimal(20,2) NOT NULL COMMENT 'Valor Prima Clasificacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifca el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifico el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se modifico el registro',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Clasificaciones Polizas' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CONC2025`
--
ALTER TABLE `CONC2025`
  ADD PRIMARY KEY (`NUMPOLXX`,`PROITIDX`,`EMPNITXX`,`NUMPOLAN`,`CLIIDXXX`,`AREAIDXX`,`POLTIPID`) USING BTREE;
COMMIT;


