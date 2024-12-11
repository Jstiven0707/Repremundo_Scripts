
CREATE TABLE `trrf2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de registro fotografico',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtrdtrxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `dtrmanxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de manifiesto',
  `dtrplaen` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Planilla de envio',
  `dtrplare` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Planilla de recepcion',
  `dtridxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso',
  `ncontenx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenedores',
  `dtrseqrf` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Registro Fotografico',
  `tipidxxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tipo de Documento',
  `docidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento',
  `rutaxxxx` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta de Registro Fotografico',
  `drivesrc` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de archivo en Drive',
  `cliidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cliente',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registro Fotografico Asociado a Documento de Transporte';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `trrf2025`
--
ALTER TABLE `trrf2025`
  ADD PRIMARY KEY (`idrficxx`,`dtrseqrf`);
COMMIT;

