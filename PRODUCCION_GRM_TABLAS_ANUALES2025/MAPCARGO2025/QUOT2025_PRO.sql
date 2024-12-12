

CREATE TABLE `QUOT2025` (
  `QUOTGUID` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la cotizacion',
  `QUONUMXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la cotizacion',
  `JOBNUMXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero de la cotizacion',
  `QTSTATUS` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado de la cotizacion',
  `TERMPAGO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Termino de pago',
  `QUOTCOMP` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Empresa que emite la cotizacion',
  `REGUSRNA` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre usuario que creo la cotización',
  `QFECEXPX` datetime DEFAULT NULL COMMENT 'Fecha de expiración de cotización',
  `QUOVENDOR` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Vendedor que genera la cotizacion',
  `QUODIVXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'División ',
  `CLIIDXXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'NIT del cliente',
  `CLINOMXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre del cliente',
  `CLIREPRE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Representante',
  `MODETRAN` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Modo de Transportación',
  `DIRECTXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Dirección Entrante/Saliente',
  `INCOTERM` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Incoterms',
  `FREQUENX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Frecuencia',
  `CHARDESC` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción de la carga',
  `WAREDANG` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mercancia Peligrosa',
  `QTOTALPI` int(15) DEFAULT NULL COMMENT 'Total de piezas de la cotización',
  `QTOTALWE` float NOT NULL COMMENT 'Total peso cotización',
  `OPTOTALV` float NOT NULL COMMENT 'Total volumen cotización',
  `QTBALANX` float DEFAULT NULL COMMENT 'Balance de la Cotización',
  `QTOUCOPX` float DEFAULT NULL COMMENT 'Gastos de la Cotización',
  `QTINCOPX` float DEFAULT NULL COMMENT 'Ingresos de la Cotización',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de la cabecera de la cotizacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `QUOT2025`
--
ALTER TABLE `QUOT2025`
  ADD PRIMARY KEY (`QUONUMXX`);
COMMIT;


