
CREATE TABLE `rdcc2025` (
  `redccscx` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de Reporte',
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comfecxx` date NOT NULL COMMENT 'Fecha de Cierre',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de Reportes Diarios de Caja';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rdcc2025`
--
ALTER TABLE `rdcc2025`
  ADD PRIMARY KEY (`redccscx`);
COMMIT;

