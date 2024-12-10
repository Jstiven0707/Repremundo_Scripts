
CREATE TABLE `USLT2025` (
  `REGIDXXX` int(11) NOT NULL COMMENT 'Id unico de registro',
  `USRIDXXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario',
  `LOCLATXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Latitud de la ubicacion',
  `LOCLONXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Longitud de la ubicacion',
  `LOCDIRXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion de la ubicacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ubicacion de usuarios AppRepremundo' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `USLT2025`
--
ALTER TABLE `USLT2025`
  ADD PRIMARY KEY (`REGIDXXX`,`USRIDXXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `USLT2025`
--
ALTER TABLE `USLT2025`
  MODIFY `REGIDXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id unico de registro';
COMMIT;


