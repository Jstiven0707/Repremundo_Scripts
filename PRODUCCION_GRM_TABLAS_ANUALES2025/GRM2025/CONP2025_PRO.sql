

CREATE TABLE `CONP2025` (
  `NUMPOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Poliza',
  `AUXFINXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorización Financiero ',
  `AUFINFEC` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha aprobación financiero',
  `AUXCONTX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorización Contabilidad',
  `AUCONTFE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobación contabilidad',
  `AUXLEGXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorización Legal',
  `AULEGFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobación legal',
  `AUXCOMXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorización Comercial',
  `AUCOMFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobación comercial',
  `AUXGERXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorización Gerencia',
  `AUGERFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobación Gerencia',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `NUMPOLAN` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la poliza anterior',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `AREAIDXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area',
  `POLTIPID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID TIPO DE POLIZA',
  `FECINIVI` date NOT NULL COMMENT 'Fecha Inicial de vigencia de la poliza',
  `FECFINVI` date NOT NULL COMMENT 'DATE Fecha Fin de Po',
  `VALPOLXX` decimal(20,2) NOT NULL COMMENT 'Valor de la Poliza',
  `SOPPOLXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'path del soporte de la poliza',
  `DESSOPXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'texto del soporte de la poliza',
  `ESTSOPGE` enum('','ACTIVO','CARGADO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el estado del comprobante para su subida a genio',
  `TEXERRSP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'texto del error en la subida a genio del soporte de la poliza',
  `NUMGPOLX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la G',
  `OBSGXXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observación Numero de la G',
  `OBSPOLXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Poliza',
  `NUMPPOLX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la P',
  `OBSPXXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Numero de la P',
  `USMODSTP` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica estado',
  `FEMODESP` date NOT NULL COMMENT 'Fecha de modificación del estado',
  `HOMODESP` time NOT NULL COMMENT 'Hora de modificación del estado',
  `JUSMODES` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificación de la modificación del estado',
  `ITRPAP26` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Robot p26',
  `ITFECP26` datetime NOT NULL COMMENT 'Fecha de proceso p26',
  `PLPAGOXX` int(11) DEFAULT '0' COMMENT 'Plazo para pago',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera POLIZAS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CONP2025`
--
ALTER TABLE `CONP2025`
  ADD PRIMARY KEY (`NUMPOLXX`,`PROITIDX`,`EMPNITXX`,`NUMPOLAN`,`CLIIDXXX`,`AREAIDXX`) USING BTREE;
COMMIT;


