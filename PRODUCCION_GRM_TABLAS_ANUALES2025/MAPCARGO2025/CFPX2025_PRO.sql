

CREATE TABLE `CFPX2025` (
  `CFPIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `TYPEXXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CFPPROID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `AUFMAFEX` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha aprobacion factura mes anterior',
  `AUXFINXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Financiero',
  `AUFINFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobacion Financiero',
  `CFPAPOPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'estado operativo',
  `AUXCOMPX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Operativo',
  `AUCOMFEC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha aprobacion Operativo',
  `AUXCONTX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Contabilidad',
  `AUCONTFE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha Aprobación Contabilidad',
  `CFPPRIXX` enum('','URGENTE','ALTA','MEDIA','BAJA') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Prioridad de la factura',
  `CFPFECXX` date NOT NULL COMMENT 'Fecha Factura',
  `CFPHORXX` time NOT NULL COMMENT 'Hora Factura',
  `CFPFEVXX` date NOT NULL COMMENT 'Fecha de Vencimiento de Pago',
  `CFPVLRXX` decimal(12,2) NOT NULL COMMENT 'Valor Factura Incluido Iva',
  `CFPVLRAN` decimal(12,2) NOT NULL COMMENT 'Valor Factura anes de IVA',
  `CFPVLRUS` decimal(12,2) NOT NULL COMMENT 'Valor Factura USD',
  `CFPOBSXX` text COLLATE utf8_unicode_ci COMMENT 'Observación Factura',
  `CFMCLIID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CFMDOCTR` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CFMCENCO` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Centro de costo',
  `CFMPOSIC` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Posicion',
  `CFMOPERA` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Operacion',
  `TYPETRAN` varchar(15) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Tipo de transaccion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Factura Proveedores';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CFPX2025`
--
ALTER TABLE `CFPX2025`
  ADD PRIMARY KEY (`CFPIDXXX`,`CFPPROID`,`EMPNITXX`);
COMMIT;


