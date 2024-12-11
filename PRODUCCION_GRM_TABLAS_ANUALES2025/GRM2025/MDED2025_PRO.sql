

CREATE TABLE `MDED2025` (
  `ESIDDOCX` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Entrada',
  `ESCODDOC` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Entrada',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero DO',
  `NUMDOCXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento',
  `TIPDOCID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Documento',
  `DOCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Documento',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario crea',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos Soportes' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDED2025`
--
ALTER TABLE `MDED2025`
  ADD PRIMARY KEY (`ESIDDOCX`,`ESCODDOC`,`DOCNROXX`,`TIPDOCID`,`DOCIDXXX`) USING BTREE;
COMMIT;

