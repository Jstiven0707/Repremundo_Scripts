

CREATE TABLE `HLDA2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Consecutivo Ticket',
  `CAMIDXXX` int(11) NOT NULL COMMENT 'Id campo',
  `VALORXXX` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Valor campo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Campos adicionales Cabecera Tickets';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HLDA2025`
--
ALTER TABLE `HLDA2025`
  ADD PRIMARY KEY (`HELCCSCX`,`CAMIDXXX`);
COMMIT;


