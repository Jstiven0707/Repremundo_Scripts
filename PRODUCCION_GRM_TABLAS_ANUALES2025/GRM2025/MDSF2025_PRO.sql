

CREATE TABLE `MDSF2025` (
  `SOFOIDCX` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Consecutivo generado',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do Impo',
  `DOIPEDXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido',
  `DOCPODXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PO',
  `DOCPROXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `SOFFACID` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro. Facturas',
  `LIMVLRXX` decimal(18,2) NOT NULL COMMENT 'Valor Fob',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto nal.',
  `ANALNITX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula de Analista',
  `DGETRMXX` decimal(18,2) NOT NULL COMMENT 'Tipo de cambio',
  `DGETRMEU` decimal(18,2) NOT NULL COMMENT 'Tipo de Cambio Euro',
  `LIMFLEXX` decimal(18,2) NOT NULL COMMENT 'Valor fletes',
  `LIMOTRXX` decimal(18,2) NOT NULL COMMENT 'Otros gastos',
  `LIMSEGXX` decimal(18,2) NOT NULL COMMENT 'Seguro',
  `LIMGRARA` decimal(18,2) NOT NULL COMMENT 'Gravamen arancelario',
  `LIMIVAXX` decimal(18,2) NOT NULL COMMENT 'Iva',
  `LIMANTID` decimal(18,2) NOT NULL COMMENT 'Antidumping',
  `LIMTOTAN` decimal(18,2) NOT NULL COMMENT 'Total anticipo',
  `ESTADOPR` enum('','COMPLETO','CON EXCEPCION') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del proceso',
  `TIPAUTXX` enum('','PRORROGA','LEGALIZACION','CORRECCION') COLLATE utf8_unicode_ci NOT NULL COMMENT 'TIPO DE SOLICITUD',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Crea el Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultimo Usuario Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Ultima Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Ultima Modificacion del Registro',
  `REGESTXX` enum('','SINAUTORIZAR','AUTORIZADO','RECHAZADO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SINAUTORIZAR' COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Solicitud Fondos Sodimac' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSF2025`
--
ALTER TABLE `MDSF2025`
  ADD PRIMARY KEY (`SOFOIDCX`,`DOCNROXX`) USING BTREE;
COMMIT;


