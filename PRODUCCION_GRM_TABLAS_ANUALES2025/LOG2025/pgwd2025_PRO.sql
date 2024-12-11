

CREATE TABLE `pgwd2025` (
  `numordco` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n prefijo de pedido con nÃºmero de pedido',
  `numoplxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n del prefijo de la  factura con el nÃºmero de la factura',
  `idarticu` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id del articulo o sku',
  `descripx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion articulo',
  `unicomxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de compra',
  `precioun` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Precio Unitario',
  `cantidad` int(11) NOT NULL COMMENT 'cantidad',
  `cantentr` int(11) NOT NULL COMMENT 'cantidad entregada',
  `cantdevx` int(11) NOT NULL COMMENT 'cantidad devuelta',
  `estadoxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado de la entrega',
  `causalxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nÃºmero de la novedad',
  `respnove` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable de la novedad',
  `observac` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'observaciones',
  `regfecxx` date NOT NULL COMMENT 'fecha de creaciÃ³n',
  `reghorxx` time NOT NULL COMMENT 'hora de creaciÃ³n',
  `regmodxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuarios que modifican',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificaciÃ³n de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificaciÃ³n de registro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea ',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de pedidos  de GWS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pgwd2025`
--
ALTER TABLE `pgwd2025`
  ADD PRIMARY KEY (`numoplxx`,`idarticu`,`numordco`);
COMMIT;

