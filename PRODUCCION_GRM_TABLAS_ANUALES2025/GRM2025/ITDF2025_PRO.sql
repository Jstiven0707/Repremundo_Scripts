

CREATE TABLE `ITDF2025` (
  `ITFACIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `GENNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Nodo Principal',
  `SECNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Nodo Hijo',
  `FIDNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Archivo Asociado',
  `FILTYPXX` enum('GENIO','GRM') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'GRM' COMMENT 'Bandera Alojamiento de Archivo',
  `LINKTYPX` enum('CONSECUTIVO','FACTURA') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CONSECUTIVO' COMMENT 'Bandera de enlace a metadato o consecutivo',
  `ITFACSQX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sq Link Factura',
  `FACDESLI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripción Link',
  `FACLINKX` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Link',
  `FACPATHX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta Absoluta',
  `INVFIEDX` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'field_proveedor_facturas' COMMENT 'Nombre de campo de proveedor en genio',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos Soporte Facturas IT' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITDF2025`
--
ALTER TABLE `ITDF2025`
  ADD PRIMARY KEY (`ITFACIDX`,`PROITIDX`,`EMPNITXX`,`ITFACSQX`) USING BTREE;
COMMIT;

