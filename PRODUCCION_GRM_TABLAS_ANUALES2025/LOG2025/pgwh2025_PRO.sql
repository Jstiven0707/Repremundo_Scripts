
CREATE TABLE `pgwh2025` (
  `whidxxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `numordco` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No pedido',
  `numoplxx` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'concatenaciÃ³n de prefijo de la factura con el nÃºmero de la factura',
  `numfactx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero factura',
  `cardcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iddirecx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id direcciÃ³n',
  `estadoxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SOLICITADO' COMMENT 'estado de la entrega',
  `transpor` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'REPREMUNDO' COMMENT ' transportadora',
  `cualxxxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la trasnportadora',
  `placaxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'placa del vehÃ­culo',
  `tipovehx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de vehÃ­culo',
  `fechcita` datetime NOT NULL COMMENT 'fecha de cita y hora de cita',
  `obsvrutx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'observaciones ruteo automatico ',
  `observac` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'observaciones',
  `femixxxx` date NOT NULL COMMENT 'Fecha minima de entrega',
  `femaxxxx` date NOT NULL COMMENT 'Fecha maxima de entrega',
  `homixxxx` time NOT NULL COMMENT 'Hora minima de entrega',
  `homaxxxx` time NOT NULL COMMENT 'Hora maxima de entrega',
  `numcreax` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de creacion orden liftit',
  `feenvped` date NOT NULL COMMENT 'Fecha envio pedido liftit',
  `envifacx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Se envio desde factura SI/NO NA(no actualizó)',
  `cumplido` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si se envio cumplido',
  `docadic` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nom doc que se adiciono',
  `feradica` date NOT NULL COMMENT 'Fecha de radicacion del cumplido',
  `recaudox` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'si tiene recaudo o no',
  `vlrecaud` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor a recaudar',
  `totlprce` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'precio total',
  `numcajas` int(11) NOT NULL COMMENT 'num cajas por pedido',
  `ncredito` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero nota credito',
  `vnotcred` decimal(8,0) NOT NULL COMMENT 'Valor Nota Credito',
  `vehicxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hesqsegx` int(11) NOT NULL COMMENT 'Horas esquema de seguridad',
  `valviaje` float NOT NULL COMMENT 'Valor viaje o dedicado',
  `vcarguex` decimal(8,0) NOT NULL COMMENT 'Valor de cargue',
  `vdescarg` decimal(8,0) NOT NULL COMMENT 'Valor de descargue',
  `candadox` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica candado satelital',
  `vespecia` decimal(8,0) NOT NULL COMMENT 'Valor especiales',
  `fdevbode` date NOT NULL COMMENT 'Fecha devolucion bodega',
  `regfecxx` date NOT NULL COMMENT 'fecha de creaciÃ³n',
  `reghorxx` time NOT NULL COMMENT 'hora de creaciÃ³n',
  `regmodxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuarios que modifican',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificaciÃ³n de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificaciÃ³n de registro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea ',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de pedidos  de GWS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pgwh2025`
--
ALTER TABLE `pgwh2025`
  ADD PRIMARY KEY (`numordco`),
  ADD KEY `numoplxx` (`numoplxx`),
  ADD KEY `cardcode` (`cardcode`),
  ADD KEY `iddirecx` (`iddirecx`);
COMMIT;

