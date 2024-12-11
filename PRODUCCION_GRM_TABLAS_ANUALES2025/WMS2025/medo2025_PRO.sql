
CREATE TABLE `medo2025` (
  `idrecepx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Recepcion',
  `tipometa` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Metadato',
  `metadato` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Metadato',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='METADATO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medo2025`
--
ALTER TABLE `medo2025`
  ADD PRIMARY KEY (`idrecepx`,`tipometa`,`metadato`);
COMMIT;

