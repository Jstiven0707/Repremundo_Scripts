
CREATE TABLE `ttra2025` (
  `trazidxx` int(10) NOT NULL,
  `dtrcscxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento de Transporte',
  `eventype` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del evento',
  `traztype` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de trazabilidad',
  `evmsgcli` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Trazabilidad de transacciones';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ttra2025`
--
ALTER TABLE `ttra2025`
  ADD PRIMARY KEY (`trazidxx`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ttra2025`
--
ALTER TABLE `ttra2025`
  MODIFY `trazidxx` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;


