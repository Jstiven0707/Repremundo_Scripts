

CREATE TABLE `pago2025` (
  `whidxxxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `sqpagosx` int(11) NOT NULL COMMENT 'Pagos realizados a la factura',
  `numordco` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'No pedido',
  `numoplxx` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'factura',
  `cuentaxx` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta de consignacion',
  `fconsigx` date NOT NULL COMMENT 'Fecha de Consignacion',
  `vconsigx` decimal(8,0) NOT NULL COMMENT 'Valor Consignado',
  `soportpg` enum('SI','NO') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Soporte de pago',
  `regfecxx` date NOT NULL COMMENT 'fecha de creación registro ',
  `reghorxx` time NOT NULL COMMENT 'Hora de creación registro',
  `regusrxx` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificacion de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificacion de registro',
  `regmodxx` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica registro',
  `regestxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cuenta de Pago Factura GWS' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pago2025`
--
ALTER TABLE `pago2025`
  ADD PRIMARY KEY (`whidxxxx`,`sqpagosx`,`numordco`,`numoplxx`);
COMMIT;


