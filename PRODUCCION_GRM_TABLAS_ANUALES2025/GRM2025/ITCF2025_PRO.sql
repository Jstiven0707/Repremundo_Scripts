

CREATE TABLE `ITCF2025` (
  `ITFACIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `AUFAMEAN` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aut. factura mes anterior',
  `AUFMAFEX` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha aprobacion factura mes anterior',
  `USRIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion IT',
  `APROVFEC` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha aprobacion IT',
  `AUXFINXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Financiero',
  `AUFINFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobacion Financiero',
  `AUXCOMPX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Compras',
  `AUCOMFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobacion Compras',
  `AUXGERXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Gerencia',
  `AUGERFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobacion Gerencia',
  `AUXCONTX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Contabilidad',
  `AUCONTFE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha Aprobación Contabilidad',
  `AUACFIXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Activo Fijo',
  `AUAFFECX` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha Aprobacion Activo Fijo',
  `APROPEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aceptacion Open',
  `APROPFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha Autorizado Open',
  `APLIAFXX` enum('SI','NO','PENDIENTE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Activo fijo aplicado',
  `APLINCXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Aplica nota crédito',
  `AREAIDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de factura',
  `ITFPRIXX` enum('','ALTA','MEDIA','BAJA') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Prioridad de la factura',
  `ITNUMCOM` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Comprobante',
  `ITFACTIP` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ITFACFEC` date NOT NULL COMMENT 'Fecha Factura',
  `ITFACHOR` time NOT NULL COMMENT 'Hora Factura',
  `ITFACFEV` date NOT NULL COMMENT 'Fecha de Vencimiento de Pago',
  `ITFACVLR` decimal(12,2) NOT NULL COMMENT 'Valor Factura Incluido Iva',
  `ITFVLRAN` decimal(12,2) NOT NULL COMMENT 'Valor Factura anes de IVA',
  `ITFVLRUS` decimal(12,2) NOT NULL COMMENT 'Valor Factura USD',
  `ITFACORD` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden de compra Grupo Repremundo',
  `ITFACOBS` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observación Factura',
  `ITRPAP26` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ROBOT P26',
  `ITFECP26` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FECHA DE REPROCESO P26',
  `APIDOPLA` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Aplica ID o Placa',
  `IDDEVICE` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de ID',
  `PLATEDEV` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Placa',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Factura IT' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITCF2025`
--
ALTER TABLE `ITCF2025`
  ADD PRIMARY KEY (`ITFACIDX`,`PROITIDX`,`EMPNITXX`) USING BTREE;
COMMIT;


