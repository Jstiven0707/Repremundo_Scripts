

CREATE TABLE `QTCH2025` (
  `IDXXXXXX` int(11) NOT NULL COMMENT 'Consecutivo',
  `QTNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la cotización',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del cargo',
  `TYPEXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de cargo',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del cargo',
  `VALUECOP` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'valor del cargo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cargos de las cotizaciones';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `QTCH2025`
--
ALTER TABLE `QTCH2025`
  ADD PRIMARY KEY (`IDXXXXXX`),
  ADD KEY `QTNUMBER` (`QTNUMBER`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `QTCH2025`
--
ALTER TABLE `QTCH2025`
  MODIFY `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;

