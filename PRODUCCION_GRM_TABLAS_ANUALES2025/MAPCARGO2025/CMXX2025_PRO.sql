
CREATE TABLE `CMXX2025` (
  `IDXXXXXX` int(11) NOT NULL COMMENT 'Consecutivo',
  `ACTIONXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de accion',
  `TYPEXXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de transaccion',
  `GUIDXXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la operacion',
  `NAMETRAN` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de la transaccion',
  `INIDTDOX` datetime NOT NULL COMMENT 'Inicio proceso Dash operativo',
  `DATEMAGA` datetime NOT NULL COMMENT 'Fecha de magaya',
  `DATEKAIZ` datetime NOT NULL COMMENT 'Fecha de actualizacion operativa',
  `DASHOPER` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SIN PROCESAR' COMMENT 'Migracion dash operativo',
  `PRACTIKO` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SIN PROCESAR' COMMENT 'Migracion pratiko',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Çontrol de migracion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CMXX2025`
--
ALTER TABLE `CMXX2025`
  ADD PRIMARY KEY (`IDXXXXXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CMXX2025`
--
ALTER TABLE `CMXX2025`
  MODIFY `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;


