

CREATE TABLE `mdpo2025` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comseqxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia del Comprobante',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comrefxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia del Comprobante',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `pucidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta PUC',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Uno',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Dos',
  `usdvalxx` decimal(16,2) NOT NULL COMMENT 'Valor Facturacion en Dolares',
  `usdflagx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturacion en dolares',
  `factrmxx` decimal(12,2) NOT NULL COMMENT 'TRM',
  `comdesxx` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion del Comprobante',
  `comdbcrx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comidcxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comdocxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comseqcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefcx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfecvc` date NOT NULL,
  `comidc2x` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodc2` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `comdoc2x` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Manifiesto',
  `comseqc2` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefc2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfacxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comalert` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `regfecxx` date NOT NULL,
  `reghorxx` time NOT NULL,
  `regmodxx` date NOT NULL,
  `reghmodx` time NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle \r\ncontabilidad prefactura';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mdpo2025`
--
ALTER TABLE `mdpo2025`
  ADD PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comseqxx`,`comcsc2x`);
COMMIT;

