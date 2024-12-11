
CREATE TABLE `xcco2025` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sub Centro de Costo',
  `usdvalxx` decimal(16,2) UNSIGNED NOT NULL COMMENT 'Valor facturacion en dolares',
  `usdflagx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturación en dolares',
  `factrmxx` decimal(12,2) NOT NULL COMMENT 'TRM',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `siaidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de la SIA',
  `comtauxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Tercero Autorizado',
  `autidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tercero Autorizado',
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comifxxx` decimal(15,2) NOT NULL COMMENT 'Valor Impuesto Financiero (4 x Mil) (Factura)',
  `comipxxx` decimal(15,2) NOT NULL COMMENT 'Valor Ingresos Propios (Factura)',
  `comivaxx` decimal(15,2) NOT NULL COMMENT 'Valor del Iva',
  `comliqui` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'La factura aplica liquidacion JDA',
  `comobsxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Uno',
  `comobs2x` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Dos',
  `comfecvc` date NOT NULL COMMENT 'Fecha Vencimiento Comprobante',
  `commemod` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo cantidad documentos-piezas-peso-valor cif',
  `commemof` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo se guarda Matriz de Formularios Asignados Factura',
  `comprnxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comprobante Impreso (SI-NO)',
  `comfradx` date NOT NULL COMMENT 'Fecha Radicado Comprobante',
  `comhradx` time NOT NULL COMMENT 'Hora Radicado Comprobante',
  `comufrad` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comdfrad` date NOT NULL,
  `comdhrad` time NOT NULL,
  `taridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tarea que lo creo',
  `comrfuex` decimal(17,2) NOT NULL COMMENT 'Valor Retefuente',
  `comricax` decimal(17,2) NOT NULL COMMENT 'Valor ICA',
  `comrivax` decimal(17,2) NOT NULL COMMENT 'Valor IVA',
  `comtkpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Ticket PSE',
  `comrcpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Recibo de Caja',
  `comespse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado PSE',
  `comvppse` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Transaccion PSE',
  `comcodc2` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento Transporte',
  `faclisdt` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Listado de documentos de transporte si aplica',
  `tipfacxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Facturacion',
  `justxxxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificacion de porque se anula la factura',
  `regfecxx` date NOT NULL,
  `reghorxx` time NOT NULL,
  `regmodxx` date NOT NULL,
  `reghmodx` time NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cabecera contabilidad';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `xcco2025`
--
ALTER TABLE `xcco2025`
  ADD PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comcsc2x`),
  ADD KEY `cliidxxx` (`cliidxxx`),
  ADD KEY `comtprxx` (`comtprxx`),
  ADD KEY `proidxxx` (`proidxxx`),
  ADD KEY `comtclxx` (`comtclxx`),
  ADD KEY `comidxxx` (`comidxxx`,`comfecxx`,`regestxx`) COMMENT 'REPGER',
  ADD KEY `FACTURACION` (`comidxxx`,`ccoidxxx`,`comfecxx`,`regestxx`);
COMMIT;

