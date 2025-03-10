

CREATE TABLE `CISP2025` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISCCONX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de consignacion - transaccion',
  `CISCTIPC` enum('1','2') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo Consignacion',
  `CISCFEPX` date NOT NULL COMMENT 'echa pago de tarifa',
  `CISCNICE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero del NIT o CEDULA',
  `CISCVRTX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'valor de la tarifa',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Pagos por formulario CIS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CISP2025`
--
ALTER TABLE `CISP2025`
  ADD PRIMARY KEY (`CISCIDXX`,`CISCCONX`);
COMMIT;

