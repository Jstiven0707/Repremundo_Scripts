

CREATE TABLE `CALE2025` (
  `FACSEMAN` int(11) NOT NULL COMMENT 'Numero de Semana',
  `FECCALIX` date NOT NULL COMMENT 'Fecha Calendario Desde',
  `FECCALFX` date NOT NULL COMMENT 'Fecha Calendario Hasta',
  `CALBIMES` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Calendario Bimestre',
  `NUMDEXIN` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DEX Inicial',
  `NUMDEXFI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DEX Final',
  `FECFACTX` date NOT NULL COMMENT 'Fecha de Factura SIACO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Calendario Historico de Semanas' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CALE2025`
--
ALTER TABLE `CALE2025`
  ADD PRIMARY KEY (`FACSEMAN`) USING BTREE;
COMMIT;


