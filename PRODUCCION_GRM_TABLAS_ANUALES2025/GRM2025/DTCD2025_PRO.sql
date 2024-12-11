

CREATE TABLE `DTCD2025` (
  `DTRDSCIT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTCDIDXX` int(9) NOT NULL COMMENT 'ID de la secuencia del contenedor',
  `DTRDNUCO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de contenedor de ',
  `DTRDCACO` enum('20','40') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Capacidad de Contenedores de ',
  `DTRDPREC` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Precintos ',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Contenedor por Item de Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTCD2025`
--
ALTER TABLE `DTCD2025`
  ADD PRIMARY KEY (`DTRDSCIT`,`DTRCNICO`,`DTRCDOTR`,`DTCDIDXX`) USING BTREE;
COMMIT;


