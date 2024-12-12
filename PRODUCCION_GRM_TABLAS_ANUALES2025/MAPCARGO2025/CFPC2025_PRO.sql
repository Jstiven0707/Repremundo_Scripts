
CREATE TABLE `CFPC2025` (
  `IDXXXXXX` int(11) NOT NULL COMMENT 'Consecutivo',
  `CFPIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `IDDESCRI` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cargo',
  `DESCRIPT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion',
  `VALUEXXX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor del cargo',
  `TYPEXXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cargos de la factura';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CFPC2025`
--
ALTER TABLE `CFPC2025`
  ADD PRIMARY KEY (`IDXXXXXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CFPC2025`
--
ALTER TABLE `CFPC2025`
  MODIFY `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;


