
CREATE TABLE `CISD2025` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISOIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los origenes',
  `CISLIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los LOTES',
  `CISDIDXX` int(11) NOT NULL COMMENT 'Consecutivo del CIS para los DESTINOS',
  `CISDUSEX` enum('','1','2','3') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Uso especifico que se le dara al producto importado',
  `IDDEPXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `IDCIUXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `CISLUSOX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'uso especifico que se le dara al producto',
  `CISLDIRX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'DIRECCION DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLTELX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'TELEFONO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLPECX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PERSONA DE CONTACTO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` date NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='origenes del producto CIS vs lotes vs MATERIA PRIMA PARA LA INDUSTRIA GASTRONOMI';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CISD2025`
--
ALTER TABLE `CISD2025`
  ADD PRIMARY KEY (`CISCIDXX`,`CISOIDXX`,`CISLIDXX`,`CISDIDXX`);
COMMIT;


