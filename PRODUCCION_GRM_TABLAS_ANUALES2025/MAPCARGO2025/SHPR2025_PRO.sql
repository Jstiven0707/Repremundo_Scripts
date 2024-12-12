
CREATE TABLE `SHPR2025` (
  `IDXXXXXX` int(11) NOT NULL,
  `GUIDXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de magaya',
  `SHNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del cargo',
  `PIECESXX` int(11) NOT NULL COMMENT 'piezas',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripcion del cargo',
  `PACKNAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de paqueteSHPR2021',
  `NUMBERXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero del producto',
  `ISCONTXX` tinyint(4) DEFAULT NULL COMMENT 'Es Contenedor SI/NO.',
  `PONUMBER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero de Orden de Compra',
  `PONUMSIA` text COLLATE utf8_unicode_ci NOT NULL COMMENT '\r\nNumero pedido vs Siaco',
  `FECDEVCO` date DEFAULT NULL COMMENT 'Fecha devolución contenedor (PR)',
  `FECCITCO` date DEFAULT NULL COMMENT 'Fecha cita de cargue (PR)',
  `FECDESCO` date DEFAULT NULL COMMENT 'Fecha de descargue (PR)',
  `PLACAXXX` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Placa Vehiculo',
  `DCIDXXXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Cedula Conductor',
  `DCNOMXXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre Conductor',
  `DCTELXXX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefono Conductor',
  `DCDUTAXX` date DEFAULT NULL COMMENT 'DUTA Conductor',
  `ENTTRANX` date DEFAULT NULL COMMENT 'Entrega al transportador (Fecha salida de puerto)',
  `FECINIRU` date DEFAULT NULL COMMENT 'Fecha Inicio Ruta',
  `TRAZAUBI` tinytext COLLATE utf8_unicode_ci COMMENT 'Trazabilidad Ubicacion',
  `TRAZAFEC` date DEFAULT NULL COMMENT 'Trazabilidad Fecha',
  `TRAZAHOR` time DEFAULT NULL COMMENT 'Trazabilidad Hora',
  `TRAZANOV` tinytext COLLATE utf8_unicode_ci COMMENT 'Trazabilidad Novedad',
  `FECDEPOX` date DEFAULT NULL COMMENT 'Fecha de llegada a deposito',
  `FIRUDEVX` date DEFAULT NULL COMMENT 'Fecha Inicio Ruta Devolucion Contenedor',
  `FECAPROB` date DEFAULT NULL COMMENT 'Fecha Aprobación Moras de Contenedor',
  `CHKAPROB` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado de aprobación de la Mora de Contenedor.',
  `FLETERXX` float DEFAULT NULL COMMENT 'Flete Terrestre de Contenedor.',
  `REMESAXX` tinytext COLLATE utf8_unicode_ci COMMENT 'Remesa',
  `NUMRNDCX` tinytext COLLATE utf8_unicode_ci COMMENT 'Numero RNDC',
  `PRINCIPA` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Producto principal',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='productos del embarque';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SHPR2025`
--
ALTER TABLE `SHPR2025`
  ADD PRIMARY KEY (`IDXXXXXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `SHPR2025`
--
ALTER TABLE `SHPR2025`
  MODIFY `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

