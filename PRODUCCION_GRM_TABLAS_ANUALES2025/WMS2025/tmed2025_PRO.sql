

CREATE TABLE `tmed2025` (
  `depidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `dtrmanxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de manifiesto',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `tipometa` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Metadato',
  `metadato` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Metadato',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Metadato de Transacción';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tmed2025`
--
ALTER TABLE `tmed2025`
  ADD PRIMARY KEY (`depidxxx`,`dtrdtrxx`,`dtrmanxx`,`cliidxxx`,`tipometa`,`metadato`);
COMMIT;


