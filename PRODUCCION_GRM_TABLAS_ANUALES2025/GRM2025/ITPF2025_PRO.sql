

CREATE TABLE `ITPF2025` (
  `ITFACIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `ITFACSQX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sq Link Factura',
  `ANOPRESU` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ano del Presupuesto',
  `AREAIDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'AREA DE FACTURA',
  `SEGMENID` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segmento del Presupuesto',
  `FAMILIID` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Familia del presupuesto',
  `CCIDXXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `SCCIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subcentro de costo',
  `VLRFACAP` decimal(12,2) NOT NULL COMMENT 'Valor aplicable al presupuesto',
  `DETALLEX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Detalle Distribucion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Distribución de presupuesto Facturas ' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITPF2025`
--
ALTER TABLE `ITPF2025`
  ADD PRIMARY KEY (`ITFACIDX`,`PROITIDX`,`EMPNITXX`,`ITFACSQX`) USING BTREE;
COMMIT;


