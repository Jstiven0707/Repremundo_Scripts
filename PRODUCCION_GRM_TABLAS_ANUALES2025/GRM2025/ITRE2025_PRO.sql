
CREATE TABLE `ITRE2025` (
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de empresa',
  `NUMREQXX` bigint(20) NOT NULL COMMENT 'Número de requisición',
  `TIPSOLIS` enum('REQUISICION','SERVICIO','COMPRA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de solicitud',
  `LINKFACT` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera de enlace por factura',
  `AREAIDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area',
  `FECHRECI` date DEFAULT NULL COMMENT 'Fecha recibida por compras',
  `FECHENTX` date DEFAULT NULL COMMENT 'Fecha pactada de entrega',
  `FECHENTR` date DEFAULT NULL COMMENT 'Fecha real de entrega',
  `USRIDSOT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario solicitante',
  `ADDRESSX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion',
  `DEPIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del deposito',
  `EMAENVXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera de email enviado a compras',
  `EMAFECXX` date NOT NULL COMMENT 'Fecha de envio de email a compras',
  `EMACORXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direcciones de email enviado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NULL DEFAULT NULL COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Requisiciones y Orden de Servicios Modulo Facturas' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITRE2025`
--
ALTER TABLE `ITRE2025`
  ADD PRIMARY KEY (`NUMREQXX`,`EMPNITXX`) USING BTREE;
COMMIT;

