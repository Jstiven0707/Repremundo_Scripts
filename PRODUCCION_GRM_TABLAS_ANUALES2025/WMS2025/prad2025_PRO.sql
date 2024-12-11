

CREATE TABLE `prad2025` (
  `preaviid` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo',
  `preavseq` int(5) NOT NULL,
  `conaviso` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email de envio',
  `regusrxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que realiza el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de preavisos de llegada';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `prad2025`
--
ALTER TABLE `prad2025`
  ADD PRIMARY KEY (`preaviid`,`preavseq`);
COMMIT;

