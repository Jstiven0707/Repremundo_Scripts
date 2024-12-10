

CREATE TABLE `TARD2025` (
  `IDTAREAX` int(11) NOT NULL COMMENT 'Id de la tarea',
  `IDDETTAR` int(11) NOT NULL COMMENT 'Id detalle tarea',
  `SEGTARXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Seguimiento de la tarea',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Cabecera del APP' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TARD2025`
--
ALTER TABLE `TARD2025`
  ADD PRIMARY KEY (`IDDETTAR`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TARD2025`
--
ALTER TABLE `TARD2025`
  MODIFY `IDDETTAR` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id detalle tarea';
COMMIT;

