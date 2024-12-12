

CREATE TABLE `JBPR2025` (
  `IDXXXXXX` int(11) NOT NULL COMMENT 'Consecutivo',
  `JBNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del trabajo',
  `GUIDXXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado ',
  `PIECESXX` int(11) NOT NULL COMMENT 'piezas',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion ',
  `PACKNAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre paquete',
  `NUMBERXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero producto',
  `ARRIVALD` date NOT NULL COMMENT 'Arrival Date',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Items del trabajo';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `JBPR2025`
--
ALTER TABLE `JBPR2025`
  ADD PRIMARY KEY (`IDXXXXXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `JBPR2025`
--
ALTER TABLE `JBPR2025`
  MODIFY `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;

