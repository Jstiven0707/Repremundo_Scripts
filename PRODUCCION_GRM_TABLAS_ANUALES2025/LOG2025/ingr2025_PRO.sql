
CREATE TABLE `ingr2025` (
  `idautoxx` int(5) NOT NULL COMMENT 'id',
  `usridxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'documento',
  `perspnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre(Personal) ',
  `perssnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Nombre(Personal) ',
  `perspape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido(Personal) ',
  `perssape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido(Personal) ',
  `persftel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono(Personal) ',
  `persctel` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Celular(Personal)',
  `persrhxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Rh(Personal)',
  `perssexo` enum('F','M') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sexo(Personal) ',
  `areaingr` enum('ALMACEN','ADMINSTRACION') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de ingreso',
  `imeicelx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Imei celular',
  `contemer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contacto en Caso de Emergencia',
  `celuemer` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono del Contacto',
  `empdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de la empresa',
  `arpidxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id arl',
  `arpdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de arl',
  `persfnac` date NOT NULL COMMENT 'Fecha Nacimiento(Personal) ',
  `estadoin` enum('EN ALMACEN','FUERA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado ingreso',
  `observac` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `almacenx` enum('ALMACEN','TRANSPORTE','CONDUCTOR PROPIO','CONDUCTOR TERCERO','CLIENTE','VISITANTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Personal',
  `fichaxxx` int(4) NOT NULL COMMENT 'Numero de ficha para visitante',
  `salidaxx` date NOT NULL COMMENT 'Fecha  de salida',
  `horasali` time NOT NULL COMMENT 'Hora de salida',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ingreso Personal Almacen' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingr2025`
--
ALTER TABLE `ingr2025`
  ADD PRIMARY KEY (`idautoxx`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingr2025`
--
ALTER TABLE `ingr2025`
  MODIFY `idautoxx` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id';
COMMIT;

