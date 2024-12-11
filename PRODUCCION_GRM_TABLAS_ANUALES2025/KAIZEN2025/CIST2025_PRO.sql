

CREATE TABLE `CIST2025` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISTIDXX` int(9) NOT NULL COMMENT 'Conecutivo de la trazabilidad',
  `CISTTEXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de la trazabilidad',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='trazabilidad de solicitudes CIS robot';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIST2025`
--
ALTER TABLE `CIST2025`
  ADD PRIMARY KEY (`CISTIDXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CIST2025`
--
ALTER TABLE `CIST2025`
  MODIFY `CISTIDXX` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Conecutivo de la trazabilidad';
COMMIT;


